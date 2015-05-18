local ffi = require'ffi'
ffi.cdef[[

// <built-in>
enum {
	OBJC_NEW_PROPERTIES  = 1,
};

// i386/_types.h
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef long int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;

// sys/_types.h
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];

// sys/_pthread/_pthread_types.h
struct __darwin_pthread_handler_rec {
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};
struct _opaque_pthread_attr_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_cond_t {
 long __sig;
 char __opaque[40];
};
struct _opaque_pthread_condattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_mutex_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_mutexattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_once_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_rwlock_t {
 long __sig;
 char __opaque[192];
};
struct _opaque_pthread_rwlockattr_t {
 long __sig;
 char __opaque[16];
};
struct _opaque_pthread_t {
 long __sig;
 struct __darwin_pthread_handler_rec *__cleanup_stack;
 char __opaque[8176];
};
typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;

// sys/_types/_int8_t.h
typedef signed char int8_t;

// sys/_types/_int16_t.h
typedef short int16_t;

// sys/_types/_int32_t.h
typedef int int32_t;

// sys/_types/_int64_t.h
typedef long long int64_t;

// _types/_uint8_t.h
typedef unsigned char uint8_t;

// _types/_uint16_t.h
typedef unsigned short uint16_t;

// _types/_uint32_t.h
typedef unsigned int uint32_t;

// _types/_uint64_t.h
typedef unsigned long long uint64_t;

// stdint.h
typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;
enum {
	INT8_MAX             = 127,
	INT16_MAX            = 32767,
	INT32_MAX            = 2147483647,
	INT64_MAX            = 9223372036854775807LL,
	INT8_MIN             = -128,
	INT16_MIN            = -32768,
	INT32_MIN            = (-INT32_MAX-1),
	INT64_MIN            = (-INT64_MAX-1),
	UINT8_MAX            = 255,
	UINT16_MAX           = 65535,
	UINT32_MAX           = 4294967295U,
	UINT64_MAX           = 18446744073709551615ULL,
	INT_LEAST8_MIN       = INT8_MIN,
	INT_LEAST16_MIN      = INT16_MIN,
	INT_LEAST32_MIN      = INT32_MIN,
	INT_LEAST64_MIN      = INT64_MIN,
	INT_LEAST8_MAX       = INT8_MAX,
	INT_LEAST16_MAX      = INT16_MAX,
	INT_LEAST32_MAX      = INT32_MAX,
	INT_LEAST64_MAX      = INT64_MAX,
	UINT_LEAST8_MAX      = UINT8_MAX,
	UINT_LEAST16_MAX     = UINT16_MAX,
	UINT_LEAST32_MAX     = UINT32_MAX,
	UINT_LEAST64_MAX     = UINT64_MAX,
	INT_FAST8_MIN        = INT8_MIN,
	INT_FAST16_MIN       = INT16_MIN,
	INT_FAST32_MIN       = INT32_MIN,
	INT_FAST64_MIN       = INT64_MIN,
	INT_FAST8_MAX        = INT8_MAX,
	INT_FAST16_MAX       = INT16_MAX,
	INT_FAST32_MAX       = INT32_MAX,
	INT_FAST64_MAX       = INT64_MAX,
	UINT_FAST8_MAX       = UINT8_MAX,
	UINT_FAST16_MAX      = UINT16_MAX,
	UINT_FAST32_MAX      = UINT32_MAX,
	UINT_FAST64_MAX      = UINT64_MAX,
	INTPTR_MIN           = INT64_MIN,
	INTPTR_MAX           = INT64_MAX,
	UINTPTR_MAX          = UINT64_MAX,
	INTMAX_MIN           = INT64_MIN,
	INTMAX_MAX           = INT64_MAX,
	UINTMAX_MAX          = UINT64_MAX,
	PTRDIFF_MIN          = INT64_MIN,
	PTRDIFF_MAX          = INT64_MAX,
	SIZE_MAX             = UINT64_MAX,
	WCHAR_MAX            = __WCHAR_MAX__,
	WCHAR_MIN            = (-WCHAR_MAX-1),
	WINT_MIN             = INT32_MIN,
	WINT_MAX             = INT32_MAX,
	SIG_ATOMIC_MIN       = INT32_MIN,
	SIG_ATOMIC_MAX       = INT32_MAX,
};
#define INT8_C(v) (v)
#define INT16_C(v) (v)
#define INT32_C(v) (v)
#define INT64_C(v) (v ## LL)
#define UINT8_C(v) (v ## U)
#define UINT16_C(v) (v ## U)
#define UINT32_C(v) (v ## U)
#define UINT64_C(v) (v ## ULL)
#define INTMAX_C(v) (v ## L)
#define UINTMAX_C(v) (v ## UL)

// sys/_types/_intptr_t.h
typedef __darwin_intptr_t intptr_t;

// sys/_types/_uintptr_t.h
typedef unsigned long uintptr_t;

// _types/_intmax_t.h
typedef long int intmax_t;

// _types/_uintmax_t.h
typedef long unsigned int uintmax_t;

// libkern/i386/_OSByteOrder.h
static inline
__uint16_t
_OSSwapInt16(
    __uint16_t _data
)
{
    return ((__uint16_t)((_data << 8) | (_data >> 8)));
}
static inline
__uint32_t
_OSSwapInt32(
    __uint32_t _data
)
{
    return __builtin_bswap32(_data);
}
static inline
__uint64_t
_OSSwapInt64(
    __uint64_t _data
)
{
    return __builtin_bswap64(_data);
}

// sys/_endian.h
#define ntohs(x) __DARWIN_OSSwapInt16(x)
#define htons(x) __DARWIN_OSSwapInt16(x)
#define ntohl(x) __DARWIN_OSSwapInt32(x)
#define htonl(x) __DARWIN_OSSwapInt32(x)

// sys/_types/_in_addr_t.h
typedef __uint32_t in_addr_t;

// sys/_types/_in_port_t.h
typedef __uint16_t in_port_t;

// i386/types.h
typedef unsigned char u_int8_t;
typedef unsigned short u_int16_t;
typedef unsigned int u_int32_t;
typedef unsigned long long u_int64_t;
typedef int64_t register_t;
typedef u_int64_t syscall_arg_t;

// sys/types.h
typedef u_int64_t u_quad_t;
typedef int64_t quad_t;
typedef quad_t * qaddr_t;
typedef char * caddr_t;
typedef int32_t daddr_t;
typedef u_int32_t fixpt_t;
typedef int32_t segsz_t;
typedef int32_t swblk_t;

// sys/_types/_dev_t.h
typedef __darwin_dev_t dev_t;

// sys/_types/_blkcnt_t.h
typedef __darwin_blkcnt_t blkcnt_t;

// sys/_types/_blksize_t.h
typedef __darwin_blksize_t blksize_t;

// sys/_types/_gid_t.h
typedef __darwin_gid_t gid_t;

// sys/_types/_ino_t.h
typedef __darwin_ino_t ino_t;

// sys/_types/_key_t.h
typedef __int32_t key_t;

// sys/_types/_mode_t.h
typedef __darwin_mode_t mode_t;

// sys/_types/_nlink_t.h
typedef __uint16_t nlink_t;

// sys/_types/_id_t.h
typedef __darwin_id_t id_t;

// sys/_types/_pid_t.h
typedef __darwin_pid_t pid_t;

// sys/_types/_off_t.h
typedef __darwin_off_t off_t;

// sys/_types/_uid_t.h
typedef __darwin_uid_t uid_t;

// sys/_types/_clock_t.h
typedef __darwin_clock_t clock_t;

// sys/_types/_size_t.h
typedef __darwin_size_t size_t;

// sys/_types/_ssize_t.h
typedef __darwin_ssize_t ssize_t;

// sys/_types/_time_t.h
typedef __darwin_time_t time_t;

// sys/_types/_useconds_t.h
typedef __darwin_useconds_t useconds_t;

// sys/_types/_suseconds_t.h
typedef __darwin_suseconds_t suseconds_t;

// sys/_pthread/_pthread_attr_t.h
typedef __darwin_pthread_attr_t pthread_attr_t;

// sys/_pthread/_pthread_cond_t.h
typedef __darwin_pthread_cond_t pthread_cond_t;

// sys/_pthread/_pthread_condattr_t.h
typedef __darwin_pthread_condattr_t pthread_condattr_t;

// sys/_pthread/_pthread_mutex_t.h
typedef __darwin_pthread_mutex_t pthread_mutex_t;

// sys/_pthread/_pthread_mutexattr_t.h
typedef __darwin_pthread_mutexattr_t pthread_mutexattr_t;

// sys/_pthread/_pthread_once_t.h
typedef __darwin_pthread_once_t pthread_once_t;

// sys/_pthread/_pthread_rwlock_t.h
typedef __darwin_pthread_rwlock_t pthread_rwlock_t;

// sys/_pthread/_pthread_rwlockattr_t.h
typedef __darwin_pthread_rwlockattr_t pthread_rwlockattr_t;

// sys/_pthread/_pthread_t.h
typedef __darwin_pthread_t pthread_t;

// sys/_pthread/_pthread_key_t.h
typedef __darwin_pthread_key_t pthread_key_t;

// sys/_types/_fsblkcnt_t.h
typedef __darwin_fsblkcnt_t fsblkcnt_t;

// sys/_types/_fsfilcnt_t.h
typedef __darwin_fsfilcnt_t fsfilcnt_t;

// sys/_types/_sa_family_t.h
typedef __uint8_t sa_family_t;

// sys/_types/_socklen_t.h
typedef __darwin_socklen_t socklen_t;

// sys/_types/_iovec_t.h
struct iovec {
 void * iov_base;
 size_t iov_len;
};

// sys/socket.h
enum {
	SOCK_STREAM          = 1,
	SOCK_DGRAM           = 2,
	SOCK_RAW             = 3,
	SOCK_SEQPACKET       = 5,
	SO_DEBUG             = 0x0001,
	SO_ACCEPTCONN        = 0x0002,
	SO_REUSEADDR         = 0x0004,
	SO_KEEPALIVE         = 0x0008,
	SO_DONTROUTE         = 0x0010,
	SO_BROADCAST         = 0x0020,
	SO_LINGER            = 0x1080,
	SO_OOBINLINE         = 0x0100,
	SO_SNDBUF            = 0x1001,
	SO_RCVBUF            = 0x1002,
	SO_SNDLOWAT          = 0x1003,
	SO_RCVLOWAT          = 0x1004,
	SO_SNDTIMEO          = 0x1005,
	SO_RCVTIMEO          = 0x1006,
	SO_ERROR             = 0x1007,
	SO_TYPE              = 0x1008,
};
struct linger {
 int l_onoff;
 int l_linger;
};
enum {
	SOL_SOCKET           = 0xffff,
	AF_UNSPEC            = 0,
	AF_UNIX              = 1,
	AF_INET              = 2,
	AF_INET6             = 30,
};
struct sockaddr {
 __uint8_t sa_len;
 sa_family_t sa_family;
 char sa_data[14];
};
struct sockaddr_storage {
 __uint8_t ss_len;
 sa_family_t ss_family;
 char __ss_pad1[((sizeof(__int64_t)) - sizeof(__uint8_t) - sizeof(sa_family_t))];
 __int64_t __ss_align;
 char __ss_pad2[(128 - sizeof(__uint8_t) - sizeof(sa_family_t) - ((sizeof(__int64_t)) - sizeof(__uint8_t) - sizeof(sa_family_t)) - (sizeof(__int64_t)))];
};
enum {
	PF_UNSPEC            = AF_UNSPEC,
	PF_LOCAL             = AF_LOCAL,
	PF_UNIX              = PF_LOCAL,
	PF_INET              = AF_INET,
	PF_IMPLINK           = AF_IMPLINK,
	PF_PUP               = AF_PUP,
	PF_CHAOS             = AF_CHAOS,
	PF_NS                = AF_NS,
	PF_ISO               = AF_ISO,
	PF_OSI               = AF_ISO,
	PF_ECMA              = AF_ECMA,
	PF_DATAKIT           = AF_DATAKIT,
	PF_CCITT             = AF_CCITT,
	PF_SNA               = AF_SNA,
	PF_DECnet            = AF_DECnet,
	PF_DLI               = AF_DLI,
	PF_LAT               = AF_LAT,
	PF_HYLINK            = AF_HYLINK,
	PF_APPLETALK         = AF_APPLETALK,
	PF_ROUTE             = AF_ROUTE,
	PF_LINK              = AF_LINK,
	PF_XTP               = pseudo_AF_XTP,
	PF_COIP              = AF_COIP,
	PF_CNT               = AF_CNT,
	PF_SIP               = AF_SIP,
	PF_IPX               = AF_IPX,
	PF_RTIP              = pseudo_AF_RTIP,
	PF_PIP               = pseudo_AF_PIP,
	PF_NDRV              = AF_NDRV,
	PF_ISDN              = AF_ISDN,
	PF_KEY               = pseudo_AF_KEY,
	PF_INET6             = AF_INET6,
	PF_NATM              = AF_NATM,
	PF_SYSTEM            = AF_SYSTEM,
	PF_NETBIOS           = AF_NETBIOS,
	PF_PPP               = AF_PPP,
	PF_RESERVED_36       = AF_RESERVED_36,
	PF_UTUN              = AF_UTUN,
	PF_MAX               = AF_MAX,
	PF_VLAN              = ((uint32_t)0x766c616e),
	PF_BOND              = ((uint32_t)0x626f6e64),
	SOMAXCONN            = 128,
};
struct msghdr {
 void *msg_name;
 socklen_t msg_namelen;
 struct iovec *msg_iov;
 int msg_iovlen;
 void *msg_control;
 socklen_t msg_controllen;
 int msg_flags;
};
enum {
	MSG_OOB              = 0x1,
	MSG_PEEK             = 0x2,
	MSG_DONTROUTE        = 0x4,
	MSG_EOR              = 0x8,
	MSG_TRUNC            = 0x10,
	MSG_CTRUNC           = 0x20,
	MSG_WAITALL          = 0x40,
};
struct cmsghdr {
 socklen_t cmsg_len;
 int cmsg_level;
 int cmsg_type;
};
#define CMSG_DATA(cmsg) ((unsigned char *)(cmsg) + __DARWIN_ALIGN32(sizeof(struct cmsghdr)))
#define CMSG_FIRSTHDR(mhdr) ((mhdr)->msg_controllen >= sizeof(struct cmsghdr) ? (struct cmsghdr *)(mhdr)->msg_control : (struct cmsghdr *)0L)
#define CMSG_NXTHDR(mhdr,cmsg) ((char *)(cmsg) == (char *)0L ? CMSG_FIRSTHDR(mhdr) : ((((unsigned char *)(cmsg) + __DARWIN_ALIGN32((__uint32_t)(cmsg)->cmsg_len) + __DARWIN_ALIGN32(sizeof(struct cmsghdr))) > ((unsigned char *)(mhdr)->msg_control + (mhdr)->msg_controllen)) ? (struct cmsghdr *)0L : (struct cmsghdr *)(void *)((unsigned char *)(cmsg) + __DARWIN_ALIGN32((__uint32_t)(cmsg)->cmsg_len))))
enum {
	SCM_RIGHTS           = 0x01,
	SHUT_RD              = 0,
	SHUT_WR              = 1,
	SHUT_RDWR            = 2,
};
int accept(int, struct sockaddr * restrict, socklen_t * restrict)
  
int bind(int, const struct sockaddr *, socklen_t) 
int connect(int, const struct sockaddr *, socklen_t) 
int getpeername(int, struct sockaddr * restrict, socklen_t * restrict)
  
int getsockname(int, struct sockaddr * restrict, socklen_t * restrict)
  
int getsockopt(int, int, int, void * restrict, socklen_t * restrict);
int listen(int, int) 
ssize_t recv(int, void *, size_t, int) 
ssize_t recvfrom(int, void *, size_t, int, struct sockaddr * restrict,
  socklen_t * restrict) 
ssize_t recvmsg(int, struct msghdr *, int) 
ssize_t send(int, const void *, size_t, int) 
ssize_t sendmsg(int, const struct msghdr *, int) 
ssize_t sendto(int, const void *, size_t,
  int, const struct sockaddr *, socklen_t) 
int setsockopt(int, int, int, const void *, socklen_t);
int shutdown(int, int);
int sockatmark(int) __attribute__((availability(macosx,introduced=10.5)));
int socket(int, int, int);
int socketpair(int, int, int, int *) 

// netinet/in.h
enum {
	IPPROTO_IP           = 0,
	IPPROTO_ICMP         = 1,
	IPPROTO_TCP          = 6,
	IPPROTO_UDP          = 17,
	IPPROTO_IPV6         = 41,
	IPPROTO_RAW          = 255,
};
struct in_addr {
 in_addr_t s_addr;
};
enum {
	INADDR_ANY           = (u_int32_t)0x00000000,
	INADDR_BROADCAST     = (u_int32_t)0xffffffff,
};
struct sockaddr_in {
 __uint8_t sin_len;
 sa_family_t sin_family;
 in_port_t sin_port;
 struct in_addr sin_addr;
 char sin_zero[8];
};
enum {
	INET_ADDRSTRLEN      = 16,
};

// netinet6/in6.h
struct in6_addr {
 union {
  __uint8_t __u6_addr8[16];
  __uint16_t __u6_addr16[8];
  __uint32_t __u6_addr32[4];
 } __u6_addr;
};
enum {
	s6_addr              = __u6_addr.__u6_addr8,
	INET6_ADDRSTRLEN     = 46,
};
struct sockaddr_in6 {
 __uint8_t sin6_len;
 sa_family_t sin6_family;
 in_port_t sin6_port;
 __uint32_t sin6_flowinfo;
 struct in6_addr sin6_addr;
 __uint32_t sin6_scope_id;
};
enum {
	IN6ADDR_ANY_INIT     = {{{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }}},
	IN6ADDR_LOOPBACK_INIT = {{{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 }}},
};
extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
#define IN6_IS_ADDR_UNSPECIFIED(a) ((*(const __uint32_t *)(const void *)(&(a)->s6_addr[0]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[4]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[8]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[12]) == 0))
#define IN6_IS_ADDR_LOOPBACK(a) ((*(const __uint32_t *)(const void *)(&(a)->s6_addr[0]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[4]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[8]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[12]) == ntohl(1)))
#define IN6_IS_ADDR_V4COMPAT(a) ((*(const __uint32_t *)(const void *)(&(a)->s6_addr[0]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[4]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[8]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[12]) != 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[12]) != ntohl(1)))
#define IN6_IS_ADDR_V4MAPPED(a) ((*(const __uint32_t *)(const void *)(&(a)->s6_addr[0]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[4]) == 0) && (*(const __uint32_t *)(const void *)(&(a)->s6_addr[8]) == ntohl(0x0000ffff)))
#define IN6_IS_ADDR_6TO4(x) (ntohs((x)->s6_addr16[0]) == 0x2002)
#define IN6_IS_ADDR_LINKLOCAL(a) (((a)->s6_addr[0] == 0xfe) && (((a)->s6_addr[1] & 0xc0) == 0x80))
#define IN6_IS_ADDR_SITELOCAL(a) (((a)->s6_addr[0] == 0xfe) && (((a)->s6_addr[1] & 0xc0) == 0xc0))
#define IN6_IS_ADDR_MULTICAST(a) ((a)->s6_addr[0] == 0xff)
#define IN6_IS_ADDR_UNIQUE_LOCAL(a) (((a)->s6_addr[0] == 0xfc) || ((a)->s6_addr[0] == 0xfd))
#define IN6_IS_ADDR_MC_NODELOCAL(a) (IN6_IS_ADDR_MULTICAST(a) && (__IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_NODELOCAL))
#define IN6_IS_ADDR_MC_LINKLOCAL(a) (IN6_IS_ADDR_MULTICAST(a) && (__IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_LINKLOCAL))
#define IN6_IS_ADDR_MC_SITELOCAL(a) (IN6_IS_ADDR_MULTICAST(a) && (__IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_SITELOCAL))
#define IN6_IS_ADDR_MC_ORGLOCAL(a) (IN6_IS_ADDR_MULTICAST(a) && (__IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_ORGLOCAL))
#define IN6_IS_ADDR_MC_GLOBAL(a) (IN6_IS_ADDR_MULTICAST(a) && (__IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_GLOBAL))
enum {
	IPV6_UNICAST_HOPS    = 4,
	IPV6_MULTICAST_IF    = 9,
	IPV6_MULTICAST_HOPS  = 10,
	IPV6_MULTICAST_LOOP  = 11,
	IPV6_JOIN_GROUP      = 12,
	IPV6_LEAVE_GROUP     = 13,
	IPV6_V6ONLY          = 27,
};

// arpa/inet.h
in_addr_t inet_addr(const char *);
char *inet_ntoa(struct in_addr);
const char *inet_ntop(int, const void *, char *, socklen_t);
int inet_pton(int, const char *, void *);

// _types.h
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;
typedef __uint32_t __darwin_wctype_t;

// sys/dirent.h
#pragma pack(4)
#pragma pack()
struct dirent { __uint64_t d_ino; __uint64_t d_seekoff; __uint16_t d_reclen; __uint16_t d_namlen; __uint8_t d_type; char d_name[1024]; };

// dirent.h
struct _telldir;
typedef struct {
 int __dd_fd;
 long __dd_loc;
 long __dd_size;
 char *__dd_buf;
 int __dd_len;
 long __dd_seek;
 long __dd_rewind;
 int __dd_flags;
 __darwin_pthread_mutex_t __dd_lock;
 struct _telldir *__dd_td;
} DIR;
int closedir(DIR *) 
DIR *opendir(const char *) 
struct dirent *readdir(DIR *) 
int readdir_r(DIR *, struct dirent *, struct dirent **) 
void rewinddir(DIR *) 
void seekdir(DIR *, long) 
long telldir(DIR *) 

// sys/errno.h
extern int * __error(void);
enum {
	errno                = (*__error()),
	EPERM                = 1,
	ENOENT               = 2,
	ESRCH                = 3,
	EINTR                = 4,
	EIO                  = 5,
	ENXIO                = 6,
	E2BIG                = 7,
	ENOEXEC              = 8,
	EBADF                = 9,
	ECHILD               = 10,
	EDEADLK              = 11,
	ENOMEM               = 12,
	EACCES               = 13,
	EFAULT               = 14,
	EBUSY                = 16,
	EEXIST               = 17,
	EXDEV                = 18,
	ENODEV               = 19,
	ENOTDIR              = 20,
	EISDIR               = 21,
	EINVAL               = 22,
	ENFILE               = 23,
	EMFILE               = 24,
	ENOTTY               = 25,
	ETXTBSY              = 26,
	EFBIG                = 27,
	ENOSPC               = 28,
	ESPIPE               = 29,
	EROFS                = 30,
	EMLINK               = 31,
	EPIPE                = 32,
	EDOM                 = 33,
	ERANGE               = 34,
	EAGAIN               = 35,
	EWOULDBLOCK          = EAGAIN,
	EINPROGRESS          = 36,
	EALREADY             = 37,
	ENOTSOCK             = 38,
	EDESTADDRREQ         = 39,
	EMSGSIZE             = 40,
	EPROTOTYPE           = 41,
	ENOPROTOOPT          = 42,
	EPROTONOSUPPORT      = 43,
	ENOTSUP              = 45,
	EAFNOSUPPORT         = 47,
	EADDRINUSE           = 48,
	EADDRNOTAVAIL        = 49,
	ENETDOWN             = 50,
	ENETUNREACH          = 51,
	ENETRESET            = 52,
	ECONNABORTED         = 53,
	ECONNRESET           = 54,
	ENOBUFS              = 55,
	EISCONN              = 56,
	ENOTCONN             = 57,
	ETIMEDOUT            = 60,
	ECONNREFUSED         = 61,
	ELOOP                = 62,
	ENAMETOOLONG         = 63,
	EHOSTUNREACH         = 65,
	ENOTEMPTY            = 66,
	EDQUOT               = 69,
	ESTALE               = 70,
	ENOLCK               = 77,
	ENOSYS               = 78,
	EOVERFLOW            = 84,
	ECANCELED            = 89,
	EIDRM                = 90,
	ENOMSG               = 91,
	EILSEQ               = 92,
	EBADMSG              = 94,
	EMULTIHOP            = 95,
	ENODATA              = 96,
	ENOLINK              = 97,
	ENOSR                = 98,
	ENOSTR               = 99,
	EPROTO               = 100,
	ETIME                = 101,
	EOPNOTSUPP           = 102,
	ENOPOLICY            = 103,
};

// sys/fcntl.h
enum {
	O_RDONLY             = 0x0000,
	O_WRONLY             = 0x0001,
	O_RDWR               = 0x0002,
	O_ACCMODE            = 0x0003,
	O_NONBLOCK           = 0x0004,
	O_APPEND             = 0x0008,
	O_CREAT              = 0x0200,
	O_TRUNC              = 0x0400,
	O_EXCL               = 0x0800,
	O_NOCTTY             = 0x20000,
	F_DUPFD              = 0,
	F_GETFD              = 1,
	F_SETFD              = 2,
	F_GETFL              = 3,
	F_SETFL              = 4,
	F_GETOWN             = 5,
	F_SETOWN             = 6,
	F_GETLK              = 7,
	F_SETLK              = 8,
	F_SETLKW             = 9,
	FD_CLOEXEC           = 1,
	F_RDLCK              = 1,
	F_UNLCK              = 2,
	F_WRLCK              = 3,
};
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
int open(const char *, int, ...) 
int creat(const char *, mode_t) 
int fcntl(int, int, ...) 

// sys/_types/_o_sync.h
enum {
	O_SYNC               = 0x0080,
};

// sys/_types/_o_dsync.h
enum {
	O_DSYNC              = 0x400000,
};

// sys/_types/_seek_set.h
enum {
	SEEK_SET             = 0,
	SEEK_CUR             = 1,
	SEEK_END             = 2,
};

// sys/_types/_s_ifmt.h
enum {
	S_IFMT               = 0170000,
	S_IFIFO              = 0010000,
	S_IFCHR              = 0020000,
	S_IFDIR              = 0040000,
	S_IFBLK              = 0060000,
	S_IFREG              = 0100000,
	S_IFLNK              = 0120000,
	S_IFSOCK             = 0140000,
	S_IRWXU              = 0000700,
	S_IRUSR              = 0000400,
	S_IWUSR              = 0000200,
	S_IXUSR              = 0000100,
	S_IRWXG              = 0000070,
	S_IRGRP              = 0000040,
	S_IWGRP              = 0000020,
	S_IXGRP              = 0000010,
	S_IRWXO              = 0000007,
	S_IROTH              = 0000004,
	S_IWOTH              = 0000002,
	S_IXOTH              = 0000001,
	S_ISUID              = 0004000,
	S_ISGID              = 0002000,
	S_ISVTX              = 0001000,
};

// sys/_types/_timespec.h
struct timespec
{
 __darwin_time_t tv_sec;
 long tv_nsec;
};

// grp.h
struct group {
 char *gr_name;
 char *gr_passwd;
 gid_t gr_gid;
 char **gr_mem;
};
struct group *getgrgid(gid_t);
struct group *getgrnam(const char *);
int getgrgid_r(gid_t, struct group *, char *, size_t, struct group **);
int getgrnam_r(const char *, struct group *, char *, size_t, struct group **);
struct group *getgrent(void);
void setgrent(void);
void endgrent(void);
void setgrfile(const char *);
int setgroupent(int);

// i386/limits.h
enum {
	CHAR_BIT             = 8,
	MB_LEN_MAX           = 6,
	SCHAR_MAX            = 127,
	SCHAR_MIN            = (-128),
	UCHAR_MAX            = 255,
	CHAR_MAX             = 127,
	CHAR_MIN             = (-128),
	USHRT_MAX            = 65535,
	SHRT_MAX             = 32767,
	SHRT_MIN             = (-32768),
	UINT_MAX             = 0xffffffff,
	INT_MAX              = 2147483647,
	INT_MIN              = (-2147483647-1),
	ULONG_MAX            = 0xffffffffffffffffUL,
	LONG_MAX             = 0x7fffffffffffffffL,
	LONG_MIN             = (-0x7fffffffffffffffL-1),
	ULLONG_MAX           = 0xffffffffffffffffULL,
	LLONG_MAX            = 0x7fffffffffffffffLL,
	LLONG_MIN            = (-0x7fffffffffffffffLL-1),
	LONG_BIT             = 64,
	SSIZE_MAX            = LONG_MAX,
	WORD_BIT             = 32,
};

// sys/syslimits.h
enum {
	ARG_MAX              = (256 * 1024),
	LINK_MAX             = 32767,
	MAX_CANON            = 1024,
	MAX_INPUT            = 1024,
	NAME_MAX             = 255,
	NGROUPS_MAX          = 16,
	PATH_MAX             = 1024,
	PIPE_BUF             = 512,
	BC_BASE_MAX          = 99,
	BC_DIM_MAX           = 2048,
	BC_SCALE_MAX         = 99,
	BC_STRING_MAX        = 1000,
	CHARCLASS_NAME_MAX   = 14,
	COLL_WEIGHTS_MAX     = 2,
	EQUIV_CLASS_MAX      = 2,
	EXPR_NEST_MAX        = 32,
	LINE_MAX             = 2048,
	RE_DUP_MAX           = 255,
	NZERO                = 20,
};

// limits.h
enum {
	PTHREAD_DESTRUCTOR_ITERATIONS = 4,
	PTHREAD_KEYS_MAX     = 512,
	PTHREAD_STACK_MIN    = 8192,
	NL_ARGMAX            = 9,
	NL_LANGMAX           = 14,
	NL_MSGMAX            = 32767,
	NL_NMAX              = 1,
	NL_SETMAX            = 255,
	NL_TEXTMAX           = 2048,
	IOV_MAX              = 1024,
	SCHAR_MAX            = __SCHAR_MAX__,
	SHRT_MAX             = __SHRT_MAX__,
	INT_MAX              = __INT_MAX__,
	LONG_MAX             = __LONG_MAX__,
	SCHAR_MIN            = (-__SCHAR_MAX__-1),
	SHRT_MIN             = (-__SHRT_MAX__ -1),
	INT_MIN              = (-__INT_MAX__ -1),
	LONG_MIN             = (-__LONG_MAX__ -1L),
	UCHAR_MAX            = (__SCHAR_MAX__*2 +1),
	USHRT_MAX            = (__SHRT_MAX__ *2 +1),
	UINT_MAX             = (__INT_MAX__ *2U +1U),
	ULONG_MAX            = (__LONG_MAX__ *2UL+1UL),
	CHAR_BIT             = __CHAR_BIT__,
	CHAR_MIN             = SCHAR_MIN,
	CHAR_MAX             = __SCHAR_MAX__,
	LLONG_MAX            = __LONG_LONG_MAX__,
	LLONG_MIN            = (-__LONG_LONG_MAX__-1LL),
	ULLONG_MAX           = (__LONG_LONG_MAX__*2ULL+1ULL),
	LONG_LONG_MAX        = __LONG_LONG_MAX__,
	LONG_LONG_MIN        = (-__LONG_LONG_MAX__-1LL),
	ULONG_LONG_MAX       = (__LONG_LONG_MAX__*2ULL+1ULL),
};

// net/if.h
enum {
	IF_NAMESIZE          = 16,
};
struct if_nameindex {
 unsigned int if_index;
 char *if_name;
};
unsigned int if_nametoindex(const char *);
char *if_indextoname(unsigned int, char *);
struct if_nameindex *if_nameindex(void);
void if_freenameindex(struct if_nameindex *);

// netdb.h
extern int h_errno;
enum {
	IPPORT_RESERVED      = __DARWIN_IPPORT_RESERVED,
};
struct hostent {
 char *h_name;
 char **h_aliases;
 int h_addrtype;
 int h_length;
 char **h_addr_list;
};
struct netent {
 char *n_name;
 char **n_aliases;
 int n_addrtype;
 uint32_t n_net;
};
struct servent {
 char *s_name;
 char **s_aliases;
 int s_port;
 char *s_proto;
};
struct protoent {
 char *p_name;
 char **p_aliases;
 int p_proto;
};
struct addrinfo {
 int ai_flags;
 int ai_family;
 int ai_socktype;
 int ai_protocol;
 socklen_t ai_addrlen;
 char *ai_canonname;
 struct sockaddr *ai_addr;
 struct addrinfo *ai_next;
};
enum {
	HOST_NOT_FOUND       = 1,
	TRY_AGAIN            = 2,
	NO_RECOVERY          = 3,
	NO_DATA              = 4,
	EAI_AGAIN            = 2,
	EAI_BADFLAGS         = 3,
	EAI_FAIL             = 4,
	EAI_FAMILY           = 5,
	EAI_MEMORY           = 6,
	EAI_NONAME           = 8,
	EAI_SERVICE          = 9,
	EAI_SOCKTYPE         = 10,
	EAI_SYSTEM           = 11,
	EAI_OVERFLOW         = 14,
	AI_PASSIVE           = 0x00000001,
	AI_CANONNAME         = 0x00000002,
	AI_NUMERICHOST       = 0x00000004,
	AI_NUMERICSERV       = 0x00001000,
	AI_ALL               = 0x00000100,
	AI_ADDRCONFIG        = 0x00000400,
	AI_V4MAPPED          = 0x00000800,
	NI_NOFQDN            = 0x00000001,
	NI_NUMERICHOST       = 0x00000002,
	NI_NAMEREQD          = 0x00000004,
	NI_NUMERICSERV       = 0x00000008,
	NI_DGRAM             = 0x00000010,
};
void endhostent(void);
void endnetent(void);
void endprotoent(void);
void endservent(void);
void freeaddrinfo(struct addrinfo *);
const char *gai_strerror(int);
int getaddrinfo(const char * restrict, const char * restrict,
       const struct addrinfo * restrict,
       struct addrinfo ** restrict);
struct hostent *gethostbyaddr(const void *, socklen_t, int);
struct hostent *gethostbyname(const char *);
struct hostent *gethostent(void);
int getnameinfo(const struct sockaddr * restrict, socklen_t,
         char * restrict, socklen_t, char * restrict,
         socklen_t, int);
struct netent *getnetbyaddr(uint32_t, int);
struct netent *getnetbyname(const char *);
struct netent *getnetent(void);
struct protoent *getprotobyname(const char *);
struct protoent *getprotobynumber(int);
struct protoent *getprotoent(void);
struct servent *getservbyname(const char *, const char *);
struct servent *getservbyport(int, const char *);
struct servent *getservent(void);
void sethostent(int);
void setnetent(int);
void setprotoent(int);
void setservent(int);

// netinet/tcp.h
enum {
	TCP_NODELAY          = 0x01,
};

// sys/poll.h
enum {
	POLLIN               = 0x0001,
	POLLPRI              = 0x0002,
	POLLOUT              = 0x0004,
	POLLRDNORM           = 0x0040,
	POLLWRNORM           = POLLOUT,
	POLLRDBAND           = 0x0080,
	POLLWRBAND           = 0x0100,
	POLLEXTEND           = 0x0200,
	POLLATTRIB           = 0x0400,
	POLLNLINK            = 0x0800,
	POLLWRITE            = 0x1000,
	POLLERR              = 0x0008,
	POLLHUP              = 0x0010,
	POLLNVAL             = 0x0020,
	POLLSTANDARD         = (POLLIN|POLLPRI|POLLOUT|POLLRDNORM|POLLRDBAND| POLLWRBAND|POLLERR|POLLHUP|POLLNVAL),
};
struct pollfd
{
 int fd;
 short events;
 short revents;
};
typedef unsigned int nfds_t;
extern int poll (struct pollfd *, nfds_t, int) 

// pthread_impl.h
enum {
	SCHED_OTHER          = 1,
	SCHED_FIFO           = 4,
	SCHED_RR             = 2,
};

// sched.h
struct sched_param { int sched_priority; char __opaque[4]; };
extern int sched_yield(void);
extern int sched_get_priority_min(int);
extern int sched_get_priority_max(int);

// sys/semaphore.h
typedef int sem_t;
enum {
	SEM_VALUE_MAX        = 32767,
	SEM_FAILED           = ((sem_t *)-1),
};
int sem_close(sem_t *);
int sem_destroy(sem_t *) __attribute__((deprecated));
int sem_getvalue(sem_t * restrict, int * restrict) __attribute__((deprecated));
int sem_init(sem_t *, int, unsigned int) __attribute__((deprecated));
sem_t * sem_open(const char *, int, ...);
int sem_post(sem_t *);
int sem_trywait(sem_t *);
int sem_unlink(const char *);
int sem_wait(sem_t *) 

// i386/signal.h
typedef int sig_atomic_t;

// sys/signal.h
enum {
	SIGHUP               = 1,
	SIGINT               = 2,
	SIGQUIT              = 3,
	SIGILL               = 4,
	SIGTRAP              = 5,
	SIGABRT              = 6,
	SIGPOLL              = 7,
	SIGFPE               = 8,
	SIGKILL              = 9,
	SIGBUS               = 10,
	SIGSEGV              = 11,
	SIGSYS               = 12,
	SIGPIPE              = 13,
	SIGALRM              = 14,
	SIGTERM              = 15,
	SIGURG               = 16,
	SIGSTOP              = 17,
	SIGTSTP              = 18,
	SIGCONT              = 19,
	SIGCHLD              = 20,
	SIGTTIN              = 21,
	SIGTTOU              = 22,
	SIGXCPU              = 24,
	SIGXFSZ              = 25,
	SIGVTALRM            = 26,
	SIGPROF              = 27,
	SIGUSR1              = 30,
	SIGUSR2              = 31,
	SIG_DFL              = (void (*)(int))0,
	SIG_IGN              = (void (*)(int))1,
	SIG_HOLD             = (void (*)(int))5,
	SIG_ERR              = ((void (*)(int))-1),
};
union sigval {
 int sival_int;
 void *sival_ptr;
};
enum {
	SIGEV_NONE           = 0,
	SIGEV_SIGNAL         = 1,
	SIGEV_THREAD         = 3,
};
struct sigevent {
 int sigev_notify;
 int sigev_signo;
 union sigval sigev_value;
 void (*sigev_notify_function)(union sigval);
 pthread_attr_t *sigev_notify_attributes;
};
typedef struct __siginfo {
 int si_signo;
 int si_errno;
 int si_code;
 pid_t si_pid;
 uid_t si_uid;
 int si_status;
 void *si_addr;
 union sigval si_value;
 long si_band;
 unsigned long __pad[7];
} siginfo_t;
enum {
	ILL_ILLOPC           = 1,
	ILL_ILLTRP           = 2,
	ILL_PRVOPC           = 3,
	ILL_ILLOPN           = 4,
	ILL_ILLADR           = 5,
	ILL_PRVREG           = 6,
	ILL_COPROC           = 7,
	ILL_BADSTK           = 8,
	FPE_FLTDIV           = 1,
	FPE_FLTOVF           = 2,
	FPE_FLTUND           = 3,
	FPE_FLTRES           = 4,
	FPE_FLTINV           = 5,
	FPE_FLTSUB           = 6,
	FPE_INTDIV           = 7,
	FPE_INTOVF           = 8,
	SEGV_MAPERR          = 1,
	SEGV_ACCERR          = 2,
	BUS_ADRALN           = 1,
	BUS_ADRERR           = 2,
	BUS_OBJERR           = 3,
	TRAP_BRKPT           = 1,
	TRAP_TRACE           = 2,
	CLD_EXITED           = 1,
	CLD_KILLED           = 2,
	CLD_DUMPED           = 3,
	CLD_TRAPPED          = 4,
	CLD_STOPPED          = 5,
	CLD_CONTINUED        = 6,
	POLL_IN              = 1,
	POLL_OUT             = 2,
	POLL_MSG             = 3,
	POLL_ERR             = 4,
	POLL_PRI             = 5,
	POLL_HUP             = 6,
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
         void *);
};
struct __sigaction {
 union __sigaction_u __sigaction_u;
 void (*sa_tramp)(void *, int, int, siginfo_t *, void *);
 sigset_t sa_mask;
 int sa_flags;
};
struct sigaction {
 union __sigaction_u __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};
enum {
	sa_handler           = __sigaction_u.__sa_handler,
	sa_sigaction         = __sigaction_u.__sa_sigaction,
	SA_ONSTACK           = 0x0001,
	SA_RESTART           = 0x0002,
	SA_RESETHAND         = 0x0004,
	SA_NOCLDSTOP         = 0x0008,
	SA_NODEFER           = 0x0010,
	SA_NOCLDWAIT         = 0x0020,
	SA_SIGINFO           = 0x0040,
	SA_USERSPACE_MASK    = (SA_ONSTACK | SA_RESTART | SA_RESETHAND | SA_NOCLDSTOP | SA_NODEFER | SA_NOCLDWAIT | SA_SIGINFO),
	SIG_BLOCK            = 1,
	SIG_UNBLOCK          = 2,
	SIG_SETMASK          = 3,
	SI_USER              = 0x10001,
	SI_QUEUE             = 0x10002,
	SI_TIMER             = 0x10003,
	SI_ASYNCIO           = 0x10004,
	SI_MESGQ             = 0x10005,
	SS_ONSTACK           = 0x0001,
	SS_DISABLE           = 0x0004,
	MINSIGSTKSZ          = 32768,
	SIGSTKSZ             = 131072,
};
struct sigstack {
 char *ss_sp;
 int ss_onstack;
};
void (*signal(int, void (*)(int)))(int);

// mach/i386/_structs.h
struct __darwin_i386_thread_state
{
    unsigned int __eax;
    unsigned int __ebx;
    unsigned int __ecx;
    unsigned int __edx;
    unsigned int __edi;
    unsigned int __esi;
    unsigned int __ebp;
    unsigned int __esp;
    unsigned int __ss;
    unsigned int __eflags;
    unsigned int __eip;
    unsigned int __cs;
    unsigned int __ds;
    unsigned int __es;
    unsigned int __fs;
    unsigned int __gs;
};
struct __darwin_fp_control
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
      :2,
    __pc :2,
    __rc :2,
             :1,
      :3;
};
typedef struct __darwin_fp_control __darwin_fp_control_t;
struct __darwin_fp_status
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
    __stkflt :1,
    __errsumm :1,
    __c0 :1,
    __c1 :1,
    __c2 :1,
    __tos :3,
    __c3 :1,
    __busy :1;
};
typedef struct __darwin_fp_status __darwin_fp_status_t;
struct __darwin_mmst_reg
{
 char __mmst_reg[10];
 char __mmst_rsrv[6];
};
struct __darwin_xmm_reg
{
 char __xmm_reg[16];
};
struct __darwin_i386_float_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
};
struct __darwin_i386_avx_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
};
struct __darwin_i386_exception_state
{
 __uint16_t __trapno;
 __uint16_t __cpu;
 __uint32_t __err;
 __uint32_t __faultvaddr;
};
struct __darwin_x86_debug_state32
{
 unsigned int __dr0;
 unsigned int __dr1;
 unsigned int __dr2;
 unsigned int __dr3;
 unsigned int __dr4;
 unsigned int __dr5;
 unsigned int __dr6;
 unsigned int __dr7;
};
struct __darwin_x86_thread_state64
{
 __uint64_t __rax;
 __uint64_t __rbx;
 __uint64_t __rcx;
 __uint64_t __rdx;
 __uint64_t __rdi;
 __uint64_t __rsi;
 __uint64_t __rbp;
 __uint64_t __rsp;
 __uint64_t __r8;
 __uint64_t __r9;
 __uint64_t __r10;
 __uint64_t __r11;
 __uint64_t __r12;
 __uint64_t __r13;
 __uint64_t __r14;
 __uint64_t __r15;
 __uint64_t __rip;
 __uint64_t __rflags;
 __uint64_t __cs;
 __uint64_t __fs;
 __uint64_t __gs;
};
struct __darwin_x86_float_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
};
struct __darwin_x86_avx_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
 struct __darwin_xmm_reg __fpu_ymmh8;
 struct __darwin_xmm_reg __fpu_ymmh9;
 struct __darwin_xmm_reg __fpu_ymmh10;
 struct __darwin_xmm_reg __fpu_ymmh11;
 struct __darwin_xmm_reg __fpu_ymmh12;
 struct __darwin_xmm_reg __fpu_ymmh13;
 struct __darwin_xmm_reg __fpu_ymmh14;
 struct __darwin_xmm_reg __fpu_ymmh15;
};
struct __darwin_x86_exception_state64
{
    __uint16_t __trapno;
    __uint16_t __cpu;
    __uint32_t __err;
    __uint64_t __faultvaddr;
};
struct __darwin_x86_debug_state64
{
 __uint64_t __dr0;
 __uint64_t __dr1;
 __uint64_t __dr2;
 __uint64_t __dr3;
 __uint64_t __dr4;
 __uint64_t __dr5;
 __uint64_t __dr6;
 __uint64_t __dr7;
};

// i386/_mcontext.h
struct __darwin_mcontext32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_float_state __fs;
};
struct __darwin_mcontext_avx32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_avx_state __fs;
};
struct __darwin_mcontext64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_float_state64 __fs;
};
struct __darwin_mcontext_avx64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_avx_state64 __fs;
};
typedef struct __darwin_mcontext64 *mcontext_t;

// sys/_types/_sigaltstack.h
struct __darwin_sigaltstack
{
 void *ss_sp;
 __darwin_size_t ss_size;
 int ss_flags;
};
typedef struct __darwin_sigaltstack stack_t;

// sys/_types/_ucontext.h
struct __darwin_ucontext
{
 int uc_onstack;
 __darwin_sigset_t uc_sigmask;
 struct __darwin_sigaltstack uc_stack;
 struct __darwin_ucontext *uc_link;
 __darwin_size_t uc_mcsize;
 struct __darwin_mcontext64 *uc_mcontext;
};
typedef struct __darwin_ucontext ucontext_t;

// sys/_types/_sigset_t.h
typedef __darwin_sigset_t sigset_t;

// signal.h
int raise(int);
void (*bsd_signal(int, void (*)(int)))(int);
int kill(pid_t, int) 
int killpg(pid_t, int) 
int pthread_kill(pthread_t, int);
int pthread_sigmask(int, const sigset_t *, sigset_t *) 
int sigaction(int, const struct sigaction * restrict,
     struct sigaction * restrict);
int sigaddset(sigset_t *, int);
int sigaltstack(const stack_t * restrict, stack_t * restrict) 
int sigdelset(sigset_t *, int);
int sigemptyset(sigset_t *);
int sigfillset(sigset_t *);
int sighold(int);
int sigignore(int);
int siginterrupt(int, int);
int sigismember(const sigset_t *, int);
int sigpause(int) 
int sigpending(sigset_t *);
int sigprocmask(int, const sigset_t * restrict, sigset_t * restrict);
int sigrelse(int);
void (*sigset(int, void (*)(int)))(int);
int sigsuspend(const sigset_t *) 
int sigwait(const sigset_t * restrict, int * restrict) 
inline __attribute__ ((__always_inline__)) int
__sigbits(int __signo)
{
    return __signo > 32 ? 0 : (1 << (__signo - 1));
}
#define sigaddset(set,signo) (*(set) |= __sigbits(signo), 0)
#define sigdelset(set,signo) (*(set) &= ~__sigbits(signo), 0)
#define sigismember(set,signo) ((*(set) & __sigbits(signo)) != 0)
#define sigemptyset(set) (*(set) = 0, 0)
#define sigfillset(set) (*(set) = ~(sigset_t)0, 0)

// sys/spawn.h
enum {
	POSIX_SPAWN_RESETIDS = 0x0001,
	POSIX_SPAWN_SETPGROUP = 0x0002,
	POSIX_SPAWN_SETSIGDEF = 0x0004,
	POSIX_SPAWN_SETSIGMASK = 0x0008,
};

// spawn.h
typedef void *posix_spawnattr_t;
typedef void *posix_spawn_file_actions_t;
int posix_spawn(pid_t * restrict, const char * restrict,
  const posix_spawn_file_actions_t *,
  const posix_spawnattr_t * restrict,
  char *const __argv[ restrict],
  char *const __envp[ restrict]) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnp(pid_t * restrict, const char * restrict,
  const posix_spawn_file_actions_t *,
  const posix_spawnattr_t * restrict,
  char *const __argv[ restrict],
  char *const __envp[ restrict]) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawn_file_actions_addclose(posix_spawn_file_actions_t *, int) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawn_file_actions_adddup2(posix_spawn_file_actions_t *, int,
  int) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawn_file_actions_addopen(
  posix_spawn_file_actions_t * restrict, int,
  const char * restrict, int, mode_t) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawn_file_actions_destroy(posix_spawn_file_actions_t *) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawn_file_actions_init(posix_spawn_file_actions_t *) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_destroy(posix_spawnattr_t *) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_getsigdefault(const posix_spawnattr_t * restrict,
  sigset_t * restrict) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_getflags(const posix_spawnattr_t * restrict,
  short * restrict) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_getpgroup(const posix_spawnattr_t * restrict,
  pid_t * restrict) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_getsigmask(const posix_spawnattr_t * restrict,
  sigset_t * restrict) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_init(posix_spawnattr_t *) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_setsigdefault(posix_spawnattr_t * restrict,
  const sigset_t * restrict) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_setflags(posix_spawnattr_t *, short) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_setpgroup(posix_spawnattr_t *, pid_t) __attribute__((availability(macosx,introduced=10.5)));
int posix_spawnattr_setsigmask(posix_spawnattr_t * restrict,
  const sigset_t * restrict) __attribute__((availability(macosx,introduced=10.5)));

// sys/_types/_va_list.h
typedef __darwin_va_list va_list;

// sys/_types/_null.h
enum {
	NULL                 = __DARWIN_NULL,
};

// stdio.h
typedef __darwin_off_t fpos_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
typedef struct __sFILE {
 unsigned char *_p;
 int _r;
 int _w;
 short _flags;
 short _file;
 struct __sbuf _bf;
 int _lbfsize;
 void *_cookie;
 int (*_close)(void *);
 int (*_read) (void *, char *, int);
 fpos_t (*_seek) (void *, fpos_t, int);
 int (*_write)(void *, const char *, int);
 struct __sbuf _ub;
 struct __sFILEX *_extra;
 int _ur;
 unsigned char _ubuf[3];
 unsigned char _nbuf[1];
 struct __sbuf _lb;
 int _blksize;
 fpos_t _offset;
} FILE;
extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
enum {
	BUFSIZ               = 1024,
	EOF                  = (-1),
	FOPEN_MAX            = 20,
	FILENAME_MAX         = 1024,
	P_tmpdir             = "/var/tmp/",
	L_tmpnam             = 1024,
	TMP_MAX              = 308915776,
	stdin                = __stdinp,
	stdout               = __stdoutp,
	stderr               = __stderrp,
};
void clearerr(FILE *);
int fclose(FILE *);
int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
int fgetc(FILE *);
int fgetpos(FILE * restrict, fpos_t *);
char *fgets(char * restrict, int, FILE *);
FILE *fopen(const char * restrict, const char * restrict) 
int fprintf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int fputc(int, FILE *);
int fputs(const char * restrict, FILE * restrict) 
size_t fread(void * restrict, size_t, size_t, FILE * restrict);
FILE *freopen(const char * restrict, const char * restrict,
                 FILE * restrict) 
int fscanf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
int fseek(FILE *, long, int);
int fsetpos(FILE *, const fpos_t *);
long ftell(FILE *);
size_t fwrite(const void * restrict, size_t, size_t, FILE * restrict) 
int getc(FILE *);
int getchar(void);
char *gets(char *);
void perror(const char *);
int printf(const char * restrict, ...) __attribute__((__format__ (__printf__, 1, 2)));
int putc(int, FILE *);
int putchar(int);
int puts(const char *);
int remove(const char *);
int rename (const char *, const char *);
void rewind(FILE *);
int scanf(const char * restrict, ...) __attribute__((__format__ (__scanf__, 1, 2)));
void setbuf(FILE * restrict, char * restrict);
int setvbuf(FILE * restrict, char * restrict, int, size_t);
int sprintf(char * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int sscanf(const char * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
FILE *tmpfile(void);
char *tmpnam(char *);
int ungetc(int, FILE *);
int vfprintf(FILE * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
int vprintf(const char * restrict, va_list) __attribute__((__format__ (__printf__, 1, 0)));
int vsprintf(char * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
enum {
	L_ctermid            = 1024,
};
char *ctermid(char *);
FILE *fdopen(int, const char *) 
int fileno(FILE *);
int pclose(FILE *);
FILE *popen(const char *, const char *) 
int __srget(FILE *);
int __svfscanf(FILE *, const char *, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int __swbuf(int, FILE *);
inline __attribute__ ((__always_inline__)) int __sputc(int _c, FILE *_p) {
 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf(_c, _p));
}
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
char *tempnam(const char *, const char *) 
#define getc_unlocked(fp) __sgetc(fp)
#define putc_unlocked(x,fp) __sputc(x, fp)
#define getchar_unlocked() getc_unlocked(stdin)
#define putchar_unlocked(x) putc_unlocked(x, stdout)
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int snprintf(char * restrict, size_t, const char * restrict, ...) __attribute__((__format__ (__printf__, 3, 4)));
int vfscanf(FILE * restrict, const char * restrict, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int vscanf(const char * restrict, va_list) __attribute__((__format__ (__scanf__, 1, 0)));
int vsnprintf(char * restrict, size_t, const char * restrict, va_list) __attribute__((__format__ (__printf__, 3, 0)));
int vsscanf(const char * restrict, const char * restrict, va_list) __attribute__((__format__ (__scanf__, 2, 0)));

// secure/_stdio.h
extern int __sprintf_chk (char * restrict, int, size_t,
     const char * restrict, ...);
#define sprintf(str,...) __builtin___sprintf_chk (str, 0, __darwin_obsz(str), __VA_ARGS__)
extern int __snprintf_chk (char * restrict, size_t, int, size_t,
      const char * restrict, ...);
#define snprintf(str,len,...) __builtin___snprintf_chk (str, len, 0, __darwin_obsz(str), __VA_ARGS__)
extern int __vsprintf_chk (char * restrict, int, size_t,
      const char * restrict, va_list);
#define vsprintf(str,format,ap) __builtin___vsprintf_chk (str, 0, __darwin_obsz(str), format, ap)
extern int __vsnprintf_chk (char * restrict, size_t, int, size_t,
       const char * restrict, va_list);
#define vsnprintf(str,len,format,ap) __builtin___vsnprintf_chk (str, len, 0, __darwin_obsz(str), format, ap)

// sys/ipc.h
#pragma pack(4)
struct ipc_perm
{
 uid_t uid;
 gid_t gid;
 uid_t cuid;
 gid_t cgid;
 mode_t mode;
 unsigned short _seq;
 key_t _key;
};
#pragma pack()
enum {
	IPC_CREAT            = 001000,
	IPC_EXCL             = 002000,
	IPC_NOWAIT           = 004000,
	IPC_PRIVATE          = ((key_t)0),
	IPC_RMID             = 0,
	IPC_SET              = 1,
	IPC_STAT             = 2,
};
key_t ftok(const char *, int);

// sys/mman.h
enum {
	PROT_NONE            = 0x00,
	PROT_READ            = 0x01,
	PROT_WRITE           = 0x02,
	PROT_EXEC            = 0x04,
	MAP_SHARED           = 0x0001,
	MAP_PRIVATE          = 0x0002,
	MAP_FIXED            = 0x0010,
	MCL_CURRENT          = 0x0001,
	MCL_FUTURE           = 0x0002,
	MAP_FAILED           = ((void *)-1),
	MS_ASYNC             = 0x0001,
	MS_INVALIDATE        = 0x0002,
	MS_SYNC              = 0x0010,
	POSIX_MADV_NORMAL    = 0,
	POSIX_MADV_RANDOM    = 1,
	POSIX_MADV_SEQUENTIAL = 2,
	POSIX_MADV_WILLNEED  = 3,
	POSIX_MADV_DONTNEED  = 4,
};
int mlockall(int);
int munlockall(void);
int mlock(const void *, size_t);
void * mmap(void *, size_t, int, int, int, off_t) 
int mprotect(void *, size_t, int) 
int msync(void *, size_t, int) 
int munlock(const void *, size_t);
int munmap(void *, size_t) 
int shm_open(const char *, int, ...);
int shm_unlink(const char *);
int posix_madvise(void *, size_t, int);

// sys/msg.h
typedef unsigned long msgqnum_t;
typedef unsigned long msglen_t;
enum {
	MSG_NOERROR          = 010000,
};
#pragma pack(4)
struct msqid_ds
{
 struct ipc_perm msg_perm;
 __int32_t msg_first;
 __int32_t msg_last;
 msglen_t msg_cbytes;
 msgqnum_t msg_qnum;
 msglen_t msg_qbytes;
 pid_t msg_lspid;
 pid_t msg_lrpid;
 time_t msg_stime;
 __int32_t msg_pad1;
 time_t msg_rtime;
 __int32_t msg_pad2;
 time_t msg_ctime;
 __int32_t msg_pad3;
 __int32_t msg_pad4[4];
};
#pragma pack()
int msgctl(int, int, struct msqid_ds *) 
int msgget(key_t, int);
ssize_t msgrcv(int, void *, size_t, long, int) 
int msgsnd(int, const void *, size_t, int) 

// sys/_types/_timeval.h
struct timeval
{
 __darwin_time_t tv_sec;
 __darwin_suseconds_t tv_usec;
};

// sys/resource.h
typedef __uint64_t rlim_t;
enum {
	PRIO_PROCESS         = 0,
	PRIO_PGRP            = 1,
	PRIO_USER            = 2,
	RUSAGE_SELF          = 0,
	RUSAGE_CHILDREN      = -1,
};
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_opaque[14];
};
enum {
	RLIM_INFINITY        = (((__uint64_t)1 << 63) - 1),
	RLIM_SAVED_MAX       = RLIM_INFINITY,
	RLIM_SAVED_CUR       = RLIM_INFINITY,
	RLIMIT_CPU           = 0,
	RLIMIT_FSIZE         = 1,
	RLIMIT_DATA          = 2,
	RLIMIT_STACK         = 3,
	RLIMIT_CORE          = 4,
	RLIMIT_AS            = 5,
	RLIMIT_NOFILE        = 8,
};
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
int getpriority(int, id_t);
int getrlimit(int, struct rlimit *) 
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);
int setrlimit(int, const struct rlimit *) 

// sys/_types/_fd_def.h
typedef struct fd_set {
 __int32_t fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0) ? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} fd_set;
static __inline int
__darwin_fd_isset(int _n, const struct fd_set *_p)
{
 return (_p->fds_bits[(unsigned long)_n/(sizeof(__int32_t) * 8)] & ((__int32_t)(1<<((unsigned long)_n % (sizeof(__int32_t) * 8)))));
}

// sys/_types/_fd_setsize.h
enum {
	FD_SETSIZE           = __DARWIN_FD_SETSIZE,
};

// sys/_types/_fd_set.h
#define FD_SET(n,p) __DARWIN_FD_SET(n, p)

// sys/_types/_fd_clr.h
#define FD_CLR(n,p) __DARWIN_FD_CLR(n, p)

// sys/_types/_fd_isset.h
#define FD_ISSET(n,p) __DARWIN_FD_ISSET(n, p)

// sys/_types/_fd_zero.h
#define FD_ZERO(p) __DARWIN_FD_ZERO(p)

// sys/select.h
int pselect(int, fd_set * restrict, fd_set * restrict,
  fd_set * restrict, const struct timespec * restrict,
  const sigset_t * restrict)
  
  ;

// sys/_select.h
int select(int, fd_set * restrict, fd_set * restrict,
  fd_set * restrict, struct timeval * restrict)
  
  ;

// sys/sem.h
#pragma pack(4)
struct semid_ds
{
 struct ipc_perm sem_perm;
 __int32_t sem_base;
 unsigned short sem_nsems;
 time_t sem_otime;
 __int32_t sem_pad1;
 time_t sem_ctime;
 __int32_t sem_pad2;
 __int32_t sem_pad3[4];
};
#pragma pack()
enum {
	GETNCNT              = 3,
	GETPID               = 4,
	GETVAL               = 5,
	GETALL               = 6,
	GETZCNT              = 7,
	SETVAL               = 8,
	SETALL               = 9,
};
struct sem {
 unsigned short semval;
 pid_t sempid;
 unsigned short semncnt;
 unsigned short semzcnt;
};
struct sembuf {
 unsigned short sem_num;
 short sem_op;
 short sem_flg;
};
enum {
	SEM_UNDO             = 010000,
};
int semctl(int, int, int, ...) 
int semget(key_t, int, int);
int semop(int, struct sembuf *, size_t);

// sys/stat.h
struct stat { dev_t st_dev; mode_t st_mode; nlink_t st_nlink; __darwin_ino64_t st_ino; uid_t st_uid; gid_t st_gid; dev_t st_rdev; time_t st_atime; long st_atimensec; time_t st_mtime; long st_mtimensec; time_t st_ctime; long st_ctimensec; time_t st_birthtime; long st_birthtimensec; off_t st_size; blkcnt_t st_blocks; blksize_t st_blksize; __uint32_t st_flags; __uint32_t st_gen; __int32_t st_lspare; __int64_t st_qspare[2]; };
#define S_ISBLK(m) (((m) & S_IFMT) == S_IFBLK)
#define S_ISCHR(m) (((m) & S_IFMT) == S_IFCHR)
#define S_ISDIR(m) (((m) & S_IFMT) == S_IFDIR)
#define S_ISFIFO(m) (((m) & S_IFMT) == S_IFIFO)
#define S_ISREG(m) (((m) & S_IFMT) == S_IFREG)
#define S_ISLNK(m) (((m) & S_IFMT) == S_IFLNK)
#define S_ISSOCK(m) (((m) & S_IFMT) == S_IFSOCK)
#define S_TYPEISMQ(buf) (0)
#define S_TYPEISSEM(buf) (0)
#define S_TYPEISSHM(buf) (0)
#define S_TYPEISTMO(buf) (0)
int chmod(const char *, mode_t) 
int fchmod(int, mode_t) 
int fstat(int, struct stat *) 
int lstat(const char *, struct stat *) 
int mkdir(const char *, mode_t);
int mkfifo(const char *, mode_t);
int stat(const char *, struct stat *) 
int mknod(const char *, mode_t, dev_t);
mode_t umask(mode_t);

// sys/times.h
struct tms {
 clock_t tms_utime;
 clock_t tms_stime;
 clock_t tms_cutime;
 clock_t tms_cstime;
};
clock_t times(struct tms *);

// sys/uio.h
ssize_t readv(int, const struct iovec *, int) 
ssize_t writev(int, const struct iovec *, int) 

// sys/un.h
struct sockaddr_un {
 unsigned char sun_len;
 sa_family_t sun_family;
 char sun_path[104];
};

// sys/wait.h
typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;
enum {
	WNOHANG              = 0x00000001,
	WUNTRACED            = 0x00000002,
};
#define WEXITSTATUS(x) ((_W_INT(x) >> 8) & 0x000000ff)
#define WSTOPSIG(x) (_W_INT(x) >> 8)
#define WIFCONTINUED(x) (_WSTATUS(x) == _WSTOPPED && WSTOPSIG(x) == 0x13)
#define WIFSTOPPED(x) (_WSTATUS(x) == _WSTOPPED && WSTOPSIG(x) != 0x13)
#define WIFEXITED(x) (_WSTATUS(x) == 0)
#define WIFSIGNALED(x) (_WSTATUS(x) != _WSTOPPED && _WSTATUS(x) != 0)
#define WTERMSIG(x) (_WSTATUS(x))
enum {
	WEXITED              = 0x00000004,
	WSTOPPED             = 0x00000008,
	WCONTINUED           = 0x00000010,
	WNOWAIT              = 0x00000020,
};
pid_t wait(int *) 
pid_t waitpid(pid_t, int *, int) 
int waitid(idtype_t, id_t, siginfo_t *, int) 

// sys/syslog.h
enum {
	LOG_EMERG            = 0,
	LOG_ALERT            = 1,
	LOG_CRIT             = 2,
	LOG_ERR              = 3,
	LOG_WARNING          = 4,
	LOG_NOTICE           = 5,
	LOG_INFO             = 6,
	LOG_DEBUG            = 7,
	LOG_PRIMASK          = 0x07,
};
#define LOG_PRI(p) ((p) & LOG_PRIMASK)
#define LOG_MAKEPRI(fac,pri) ((fac) | (pri))
enum {
	LOG_KERN             = (0<<3),
	LOG_USER             = (1<<3),
	LOG_MAIL             = (2<<3),
	LOG_DAEMON           = (3<<3),
	LOG_AUTH             = (4<<3),
	LOG_SYSLOG           = (5<<3),
	LOG_LPR              = (6<<3),
	LOG_NEWS             = (7<<3),
	LOG_UUCP             = (8<<3),
	LOG_CRON             = (9<<3),
	LOG_AUTHPRIV         = (10<<3),
	LOG_FTP              = (11<<3),
	LOG_NETINFO          = (12<<3),
	LOG_REMOTEAUTH       = (13<<3),
	LOG_INSTALL          = (14<<3),
	LOG_RAS              = (15<<3),
	LOG_LOCAL0           = (16<<3),
	LOG_LOCAL1           = (17<<3),
	LOG_LOCAL2           = (18<<3),
	LOG_LOCAL3           = (19<<3),
	LOG_LOCAL4           = (20<<3),
	LOG_LOCAL5           = (21<<3),
	LOG_LOCAL6           = (22<<3),
	LOG_LOCAL7           = (23<<3),
	LOG_LAUNCHD          = (24<<3),
	LOG_NFACILITIES      = 25,
	LOG_FACMASK          = 0x03f8,
};
#define LOG_FAC(p) (((p) & LOG_FACMASK) >> 3)
#define LOG_MASK(pri) (1 << (pri))
#define LOG_UPTO(pri) ((1 << ((pri)+1)) - 1)
enum {
	LOG_PID              = 0x01,
	LOG_CONS             = 0x02,
	LOG_ODELAY           = 0x04,
	LOG_NDELAY           = 0x08,
	LOG_NOWAIT           = 0x10,
	LOG_PERROR           = 0x20,
};
void closelog(void);
void openlog(const char *, int, int);
int setlogmask(int);
void syslog(int, const char *, ...) __attribute__((__format__ (__printf__, 2, 3)));

// sys/time.h
struct itimerval {
 struct timeval it_interval;
 struct timeval it_value;
};
enum {
	ITIMER_REAL          = 0,
	ITIMER_VIRTUAL       = 1,
	ITIMER_PROF          = 2,
};
int getitimer(int, struct itimerval *);
int gettimeofday(struct timeval * restrict, void * restrict);
int setitimer(int, const struct itimerval * restrict,
  struct itimerval * restrict);
int utimes(const char *, const struct timeval *);

// time.h
struct tm {
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
 long tm_gmtoff;
 char *tm_zone;
};
enum {
	CLOCKS_PER_SEC       = 1000000,
};
extern char *tzname[];
extern int getdate_err;
extern long timezone 
extern int daylight;
char *asctime(const struct tm *);
clock_t clock(void) 
char *ctime(const time_t *);
double difftime(time_t, time_t);
struct tm *getdate(const char *);
struct tm *gmtime(const time_t *);
struct tm *localtime(const time_t *);
time_t mktime(struct tm *) 
size_t strftime(char * restrict, size_t, const char * restrict, const struct tm * restrict) 
char *strptime(const char * restrict, const char * restrict, struct tm * restrict) 
time_t time(time_t *);
void tzset(void);
char *asctime_r(const struct tm * restrict, char * restrict);
char *ctime_r(const time_t *, char *);
struct tm *gmtime_r(const time_t * restrict, struct tm * restrict);
struct tm *localtime_r(const time_t * restrict, struct tm * restrict);
int nanosleep(const struct timespec *, struct timespec *) 

// ulimit.h
enum {
	UL_GETFSIZE          = 1,
	UL_SETFSIZE          = 2,
};
long ulimit(int, ...);

// sys/unistd.h
enum {
	F_OK                 = 0,
	X_OK                 = (1<<0),
	W_OK                 = (1<<1),
	R_OK                 = (1<<2),
};

// unistd.h
enum {
	STDIN_FILENO         = 0,
	STDOUT_FILENO        = 1,
	STDERR_FILENO        = 2,
};
void _exit(int) __attribute__((noreturn));
int access(const char *, int);
unsigned int
  alarm(unsigned int);
int chdir(const char *);
int chown(const char *, uid_t, gid_t);
int close(int) 
int dup(int);
int dup2(int, int);
int execl(const char *, const char *, ...);
int execle(const char *, const char *, ...);
int execlp(const char *, const char *, ...);
int execv(const char *, char * const *);
int execve(const char *, char * const *, char * const *);
int execvp(const char *, char * const *);
pid_t fork(void);
long fpathconf(int, int);
char *getcwd(char *, size_t);
gid_t getegid(void);
uid_t geteuid(void);
gid_t getgid(void);
int getgroups(int, gid_t []);
char *getlogin(void);
pid_t getpgrp(void);
pid_t getpid(void);
pid_t getppid(void);
uid_t getuid(void);
int isatty(int);
int link(const char *, const char *);
off_t lseek(int, off_t, int);
long pathconf(const char *, int);
int pause(void) 
int pipe(int [2]);
ssize_t read(int, void *, size_t) 
int rmdir(const char *);
int setgid(gid_t);
int setpgid(pid_t, pid_t);
pid_t setsid(void);
int setuid(uid_t);
unsigned int
  sleep(unsigned int) 
long sysconf(int);
pid_t tcgetpgrp(int);
int tcsetpgrp(int, pid_t);
char *ttyname(int);
int ttyname_r(int, char *, size_t) 
int unlink(const char *);
ssize_t write(int, const void *, size_t) 
size_t confstr(int, char *, size_t) 
int getopt(int, char * const [], const char *) 
extern char *optarg;
extern int optind, opterr, optopt;
enum {
	F_ULOCK              = 0,
	F_LOCK               = 1,
	F_TLOCK              = 2,
	F_TEST               = 3,
};
char *crypt(const char *, const char *);
void encrypt(char *, int) 
int fchdir(int);
long gethostid(void);
pid_t getpgid(pid_t);
pid_t getsid(pid_t);
char *getwd(char *) __attribute__((deprecated));
int lchown(const char *, uid_t, gid_t) 
int lockf(int, int, off_t) 
int nice(int) 
ssize_t pread(int, void *, size_t, off_t) 
ssize_t pwrite(int, const void *, size_t, off_t) 
pid_t setpgrp(void) 
int setregid(gid_t, gid_t) 
int setreuid(uid_t, uid_t) 
void swab(const void * restrict, void * restrict, ssize_t);
void sync(void);
int truncate(const char *, off_t);
useconds_t ualarm(useconds_t, useconds_t);
int usleep(useconds_t) 
pid_t vfork(void);
int fsync(int) 
int ftruncate(int, off_t);
int getlogin_r(char *, size_t);
int fchown(int, uid_t, gid_t);
int gethostname(char *, size_t);
ssize_t readlink(const char * restrict, char * restrict, size_t);
int setegid(gid_t);
int seteuid(uid_t);
int symlink(const char *, const char *);

// utime.h
struct utimbuf {
 time_t actime;
 time_t modtime;
};
int utime(const char *, const struct utimbuf *);
]]
