#include "framework.h"
//#include "apex/networking/sockets/_sockets.h"
#include "ip_enum.h"
#include "networking_bsd/_.h"
#include "networking_bsd/address.h"
#include <unistd.h>
#include <netdb.h>


namespace apex_openbsd
{


   ip_enum::ip_enum()
   {

      m_bWinsockInitialized = false;

      //Initialise the winsock stack
//      ::u16 wVersionRequested = MAKEWORD(1, 1);
//      WSADATA wsaData;
//      i32 err = WSAStartup(wVersionRequested, &wsaData);
//      if (err != 0)
//      {
//         TRACE("Failed in call to WSAStartup, return value was %d\n", err);
//         __throw(error_not_supported);
//      }

      //remember that we have opened winsock
      m_bWinsockInitialized = true;

//      //Code requires at least Winsock 1.1
//      if ((LOBYTE(wsaData.wVersion) != 1) || (HIBYTE(wsaData.wVersion) != 1))
//      {
//         TRACE("Failed to find a usable winsock stack which supports Winsock 1.1\n");
//         __throw(error_not_supported);
//      }
   }


   ip_enum::~ip_enum()
   {
      //release our use of winsock stack if we successfully initialised it
//      if (m_bWinsockInitialized)
//         WSACleanup();
   }


   /*   ::count ip_enum::enumerate(ip_array & ipa)
   {
   //get this machines host name
   char szHostname[256];
   if (gethostname(szHostname, sizeof(szHostname)))
   {
   TRACE("Failed in call to gethostname, WSAGetLastError returns %d\n", WSAGetLastError());
   return false;
   }

   //get host information from the host name
   HOSTENT* pHostEnt = gethostbyname(szHostname);
   if (pHostEnt == nullptr)
   {
   TRACE("Failed in call to gethostbyname, WSAGetLastError returns %d\n", WSAGetLastError());
   return false;
   }

   //check the length of the IP adress
   if (pHostEnt->h_length != 4)
   {
   TRACE("IP address returned is not 32 bits !!\n");
   return false;
   }

   //call the virtual callback function in a loop

   i32 nAdapter = 0;

   while(pHostEnt->h_addr_list[nAdapter])
   {

   in_addr addr;

   CopyMemory(&addr.S_un.S_addr, pHostEnt->h_addr_list[nAdapter], pHostEnt->h_length);

   ipa.add(ip_item(nAdapter, addr));

   nAdapter++;

   }

   return true;
   }
   */
   ::count ip_enum::enumerate(__pointer_array (::networking::address) & ipa)
   {

      //get this machines host name
      char szHostname[256];
      if (gethostname(szHostname, sizeof(szHostname)))
      {
         //TRACE("Failed in call to gethostname, WSAGetLastError returns %d\n", WSAGetLastError());
         return false;
      }
      {
         struct addrinfo *result = nullptr;
         struct addrinfo *ptr = nullptr;
         struct addrinfo hints;
         __zero(hints);
         hints.ai_family = AF_INET;
         hints.ai_socktype = SOCK_STREAM;
         hints.ai_protocol = IPPROTO_TCP;
         //hints.ai_flags = AI_NUMERICHOST;
         int i = 0;

         string str;

         unsigned int dwRetval = getaddrinfo(szHostname, nullptr, &hints, &result);
         if (dwRetval != 0)
         {
            printf("getaddrinfo failed with error: %d\n", dwRetval);
            return 0;
         }

         printf("getaddrinfo returned success\n");


         for (ptr = result; ptr != nullptr; ptr = ptr->ai_next)
         {

            printf("getaddrinfo response %d\n", i++);
            printf("\tFlags: 0x%x\n", ptr->ai_flags);
            printf("\tFamily: ");
            switch (ptr->ai_family)
            {
            case AF_UNSPEC:
               printf("Unspecified\n");
               break;
            case AF_INET:
            {
               printf("AF_INET (IPv4)\n");

               auto paddress = __new(networking_bsd::address);

               paddress->u.m_sa = *ptr->ai_addr;

               ipa.add(paddress);

               //::str::from(str, paddress->u.m_sa);

               // sockaddr_ipv4 = (struct sockaddr_in *) ptr->ai_addr;
               //printf("\tIPv4 address %s\n",
               //inet_ntoa(sockaddr_ipv4->sin_addr));
            }
               break;
            case AF_INET6:
            {
               printf("AF_INET6 (IPv6)\n");
//               ipa.add(*ptr->ai_addr);
               auto paddress = __new(networking_bsd::address);

               paddress->u.m_sa = *ptr->ai_addr;

               ipa.add(paddress);


               // the InetNtop function is available on Windows Vista and later
               // sockaddr_ipv6 = (struct sockaddr_in6 *) ptr->ai_addr;
               // printf("\tIPv6 address %s\n",
               //    InetNtop(AF_INET6, &sockaddr_ipv6->sin6_addr, ipstringbuffer, 46) );

               // We use WSAAddressToString since it is supported on Windows XP and later
               //sockaddr_ip = (LPSOCKADDR)ptr->ai_addr;
               //// The buffer length is changed by each call to WSAAddresstoString
               //// So we need to set it for each iteration through the loop for safety
               //ipbufferlength = 46;
               //iRetval = WSAAddressToString(sockaddr_ip, (unsigned int)ptr->ai_addrlen, nullptr,
               // ipstringbuffer, &ipbufferlength);
               //if (iRetval)
               // printf("WSAAddressToString failed with %u\n", WSAGetLastError());
               //else
               // printf("\tIPv6 address %s\n", ipstringbuffer);

            }
               break;
//            case AF_NETBIOS:
//               printf("AF_NETBIOS (NetBIOS)\n");
//               break;
            default:
               printf("Other %d\n", ptr->ai_family);
               break;
            }

         }
      }

      {
         struct addrinfo *result = nullptr;
         struct addrinfo *ptr = nullptr;
         struct addrinfo hints;
         __zero(hints);
         hints.ai_family = AF_INET6;
         hints.ai_socktype = SOCK_STREAM;
         hints.ai_protocol = IPPROTO_TCP;
         //hints.ai_flags = AI_NUMERICHOST;
         int i = 0;

         unsigned int dwRetval = getaddrinfo(szHostname, nullptr, &hints, &result);
         if (dwRetval != 0)
         {
            printf("getaddrinfo failed with error: %d\n", dwRetval);
            return 0;
         }

         printf("getaddrinfo returned success\n");

         string str;

         for (ptr = result; ptr != nullptr; ptr = ptr->ai_next)
         {

            printf("getaddrinfo response %d\n", i++);
            printf("\tFlags: 0x%x\n", ptr->ai_flags);
            printf("\tFamily: ");
            switch (ptr->ai_family)
            {
            case AF_UNSPEC:
               printf("Unspecified\n");
               break;
            case AF_INET:
            {
               printf("AF_INET (IPv4)\n");
//               ipa.add(*ptr->ai_addr);

               auto paddress = __new(networking_bsd::address);

               paddress->u.m_sa = *ptr->ai_addr;

               ipa.add(paddress);


               // sockaddr_ipv4 = (struct sockaddr_in *) ptr->ai_addr;
               //printf("\tIPv4 address %s\n",
               //inet_ntoa(sockaddr_ipv4->sin_addr));

            }
               break;
            case AF_INET6:
            {
               printf("AF_INET6 (IPv6)\n");
//
//               {
//                  auto ipv6 = (struct sockaddr_in6 *) ptr->ai_addr;
//                  ipa.add(::net::address(*ipv6, (int)ptr->ai_addrlen));
//               }

               auto paddress = __new(networking_bsd::address);

               paddress->u.m_sa = *ptr->ai_addr;

               ipa.add(paddress);


               // the InetNtop function is available on Windows Vista and later
               // sockaddr_ipv6 = (struct sockaddr_in6 *) ptr->ai_addr;
               // printf("\tIPv6 address %s\n",
               //    InetNtop(AF_INET6, &sockaddr_ipv6->sin6_addr, ipstringbuffer, 46) );

               // We use WSAAddressToString since it is supported on Windows XP and later
               //sockaddr_ip = (LPSOCKADDR)ptr->ai_addr;
               //// The buffer length is changed by each call to WSAAddresstoString
               //// So we need to set it for each iteration through the loop for safety
               //ipbufferlength = 46;
               //iRetval = WSAAddressToString(sockaddr_ip, (unsigned int)ptr->ai_addrlen, nullptr,
               // ipstringbuffer, &ipbufferlength);
               //if (iRetval)
               // printf("WSAAddressToString failed with %u\n", WSAGetLastError());
               //else
               // printf("\tIPv6 address %s\n", ipstringbuffer);
            }
               break;
//            case AF_NETBIOS:
//               printf("AF_NETBIOS (NetBIOS)\n");
//               break;
            default:
               printf("Other %d\n", ptr->ai_family);
               break;
            }

         }

      }

      return ipa.get_size();

   }


} // namespace apex_openbsd



