local ffi = require'ffi'
ffi.cdef[[

// <stdin>
enum {
	linux                = 1,
	unix                 = 1,
};

// stdint.h
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;
typedef long int int64_t;
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;
typedef long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long int uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
enum {
	INT8_MIN             = (-128),
	INT16_MIN            = (-32767-1),
	INT32_MIN            = (-2147483647-1),
	INT64_MIN            = (-__INT64_C(9223372036854775807)-1),
	INT8_MAX             = (127),
	INT16_MAX            = (32767),
	INT32_MAX            = (2147483647),
	INT64_MAX            = (__INT64_C(9223372036854775807)),
	UINT8_MAX            = (255),
	UINT16_MAX           = (65535),
	UINT32_MAX           = (4294967295U),
	UINT64_MAX           = (__UINT64_C(18446744073709551615)),
	INT_LEAST8_MIN       = (-128),
	INT_LEAST16_MIN      = (-32767-1),
	INT_LEAST32_MIN      = (-2147483647-1),
	INT_LEAST64_MIN      = (-__INT64_C(9223372036854775807)-1),
	INT_LEAST8_MAX       = (127),
	INT_LEAST16_MAX      = (32767),
	INT_LEAST32_MAX      = (2147483647),
	INT_LEAST64_MAX      = (__INT64_C(9223372036854775807)),
	UINT_LEAST8_MAX      = (255),
	UINT_LEAST16_MAX     = (65535),
	UINT_LEAST32_MAX     = (4294967295U),
	UINT_LEAST64_MAX     = (__UINT64_C(18446744073709551615)),
	INT_FAST8_MIN        = (-128),
	INT_FAST16_MIN       = (-9223372036854775807L-1),
	INT_FAST32_MIN       = (-9223372036854775807L-1),
	INT_FAST64_MIN       = (-__INT64_C(9223372036854775807)-1),
	INT_FAST8_MAX        = (127),
	INT_FAST16_MAX       = (9223372036854775807L),
	INT_FAST32_MAX       = (9223372036854775807L),
	INT_FAST64_MAX       = (__INT64_C(9223372036854775807)),
	UINT_FAST8_MAX       = (255),
	UINT_FAST16_MAX      = (18446744073709551615UL),
	UINT_FAST32_MAX      = (18446744073709551615UL),
	UINT_FAST64_MAX      = (__UINT64_C(18446744073709551615)),
	INTPTR_MIN           = (-9223372036854775807L-1),
	INTPTR_MAX           = (9223372036854775807L),
	UINTPTR_MAX          = (18446744073709551615UL),
	INTMAX_MIN           = (-__INT64_C(9223372036854775807)-1),
	INTMAX_MAX           = (__INT64_C(9223372036854775807)),
	UINTMAX_MAX          = (__UINT64_C(18446744073709551615)),
	PTRDIFF_MIN          = (-9223372036854775807L-1),
	PTRDIFF_MAX          = (9223372036854775807L),
	SIG_ATOMIC_MIN       = (-2147483647-1),
	SIG_ATOMIC_MAX       = (2147483647),
	SIZE_MAX             = (18446744073709551615UL),
	WCHAR_MIN            = __WCHAR_MIN,
	WCHAR_MAX            = __WCHAR_MAX,
	WINT_MIN             = (0u),
	WINT_MAX             = (4294967295u),
};
#define INT8_C(c) c
#define INT16_C(c) c
#define INT32_C(c) c
#define INT64_C(c) c ## L
#define UINT8_C(c) c
#define UINT16_C(c) c
#define UINT32_C(c) c ## U
#define UINT64_C(c) c ## UL
#define INTMAX_C(c) c ## L
#define UINTMAX_C(c) c ## UL

// bitstypes.h
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef int __daddr_t;
typedef long int __swblk_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __ssize_t;
typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;

// systypes.h
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __key_t key_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));
typedef int register_t __attribute__ ((__mode__ (__word__)));
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;

// time.h
typedef __time_t time_t;
typedef __clockid_t clockid_t;
typedef __timer_t timer_t;
struct timespec
  {
    __time_t tv_sec;
    long int tv_nsec;
  };
typedef __clock_t clock_t;
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
  long int __tm_gmtoff;
  __const char *__tm_zone;
};
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
struct sigevent;
extern clock_t clock (void) __attribute__ ((__nothrow__));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__));
extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__));
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   __const char *__restrict __format,
   __const struct tm *__restrict __tp) __attribute__ ((__nothrow__));
extern struct tm *gmtime (__const time_t *__timer) __attribute__ ((__nothrow__));
extern struct tm *localtime (__const time_t *__timer) __attribute__ ((__nothrow__));
extern struct tm *gmtime_r (__const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__));
extern struct tm *localtime_r (__const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__));
extern char *asctime (__const struct tm *__tp) __attribute__ ((__nothrow__));
extern char *ctime (__const time_t *__timer) __attribute__ ((__nothrow__));
extern char *asctime_r (__const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__));
extern char *ctime_r (__const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__));
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
extern char *tzname[2];
extern void tzset (void) __attribute__ ((__nothrow__));
extern int daylight;
extern long int timezone;
extern int stime (__const time_t *__when) __attribute__ ((__nothrow__));
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__));
extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__));
extern int dysize (int __year) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
extern int nanosleep (__const struct timespec *__requested_time,
        struct timespec *__remaining);
extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__));
extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__));
extern int clock_settime (clockid_t __clock_id, __const struct timespec *__tp)
     __attribute__ ((__nothrow__));
extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       __const struct timespec *__req,
       struct timespec *__rem);
extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__));
extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__));
extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__));
extern int timer_settime (timer_t __timerid, int __flags,
     __const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__));
extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__));
extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__));

// usrlibgccx86_64-linux-gnu4.8includestddef.h
typedef long unsigned int size_t;
enum {
	NULL                 = ((void *)0),
	NULL                 = ((void *)0),
	NULL                 = ((void *)0),
	NULL                 = ((void *)0),
	NULL                 = ((void *)0),
};

// bitspthreadtypes.h
typedef unsigned long int pthread_t;
typedef union
{
  char __size[56];
  long int __align;
} pthread_attr_t;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;
    unsigned int __nusers;
    int __kind;
    int __spins;
    __pthread_list_t __list;
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
typedef union
{
  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    unsigned long int __pad1;
    unsigned long int __pad2;
    unsigned int __flags;
  } __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;

// bitsuio.h
enum {
	UIO_MAXIOV           = 1024,
};
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };

// sysuio.h
extern ssize_t readv (int __fd, __const struct iovec *__iovec, int __count)
  ;
extern ssize_t writev (int __fd, __const struct iovec *__iovec, int __count)
  ;

// bitssocket.h
typedef __socklen_t socklen_t;
enum __socket_type
{
  SOCK_STREAM = 1,
enum {
	SOCK_STREAM          = SOCK_STREAM,
};
  SOCK_DGRAM = 2,
enum {
	SOCK_DGRAM           = SOCK_DGRAM,
};
  SOCK_RAW = 3,
enum {
	SOCK_RAW             = SOCK_RAW,
};
  SOCK_RDM = 4,
enum {
	SOCK_RDM             = SOCK_RDM,
};
  SOCK_SEQPACKET = 5,
enum {
	SOCK_SEQPACKET       = SOCK_SEQPACKET,
};
  SOCK_DCCP = 6,
enum {
	SOCK_DCCP            = SOCK_DCCP,
};
  SOCK_PACKET = 10,
enum {
	SOCK_PACKET          = SOCK_PACKET,
};
  SOCK_CLOEXEC = 02000000,
enum {
	SOCK_CLOEXEC         = SOCK_CLOEXEC,
};
  SOCK_NONBLOCK = 04000
enum {
	SOCK_NONBLOCK        = SOCK_NONBLOCK,
};
};
enum {
	PF_UNSPEC            = 0,
	PF_LOCAL             = 1,
	PF_UNIX              = PF_LOCAL,
	PF_FILE              = PF_LOCAL,
	PF_INET              = 2,
	PF_AX25              = 3,
	PF_IPX               = 4,
	PF_APPLETALK         = 5,
	PF_NETROM            = 6,
	PF_BRIDGE            = 7,
	PF_ATMPVC            = 8,
	PF_X25               = 9,
	PF_INET6             = 10,
	PF_ROSE              = 11,
	PF_DECnet            = 12,
	PF_NETBEUI           = 13,
	PF_SECURITY          = 14,
	PF_KEY               = 15,
	PF_NETLINK           = 16,
	PF_ROUTE             = PF_NETLINK,
	PF_PACKET            = 17,
	PF_ASH               = 18,
	PF_ECONET            = 19,
	PF_ATMSVC            = 20,
	PF_RDS               = 21,
	PF_SNA               = 22,
	PF_IRDA              = 23,
	PF_PPPOX             = 24,
	PF_WANPIPE           = 25,
	PF_LLC               = 26,
	PF_CAN               = 29,
	PF_TIPC              = 30,
	PF_BLUETOOTH         = 31,
	PF_IUCV              = 32,
	PF_RXRPC             = 33,
	PF_ISDN              = 34,
	PF_PHONET            = 35,
	PF_IEEE802154        = 36,
	PF_MAX               = 37,
	AF_UNSPEC            = PF_UNSPEC,
	AF_LOCAL             = PF_LOCAL,
	AF_UNIX              = PF_UNIX,
	AF_FILE              = PF_FILE,
	AF_INET              = PF_INET,
	AF_AX25              = PF_AX25,
	AF_IPX               = PF_IPX,
	AF_APPLETALK         = PF_APPLETALK,
	AF_NETROM            = PF_NETROM,
	AF_BRIDGE            = PF_BRIDGE,
	AF_ATMPVC            = PF_ATMPVC,
	AF_X25               = PF_X25,
	AF_INET6             = PF_INET6,
	AF_ROSE              = PF_ROSE,
	AF_DECnet            = PF_DECnet,
	AF_NETBEUI           = PF_NETBEUI,
	AF_SECURITY          = PF_SECURITY,
	AF_KEY               = PF_KEY,
	AF_NETLINK           = PF_NETLINK,
	AF_ROUTE             = PF_ROUTE,
	AF_PACKET            = PF_PACKET,
	AF_ASH               = PF_ASH,
	AF_ECONET            = PF_ECONET,
	AF_ATMSVC            = PF_ATMSVC,
	AF_RDS               = PF_RDS,
	AF_SNA               = PF_SNA,
	AF_IRDA              = PF_IRDA,
	AF_PPPOX             = PF_PPPOX,
	AF_WANPIPE           = PF_WANPIPE,
	AF_LLC               = PF_LLC,
	AF_CAN               = PF_CAN,
	AF_TIPC              = PF_TIPC,
	AF_BLUETOOTH         = PF_BLUETOOTH,
	AF_IUCV              = PF_IUCV,
	AF_RXRPC             = PF_RXRPC,
	AF_ISDN              = PF_ISDN,
	AF_PHONET            = PF_PHONET,
	AF_IEEE802154        = PF_IEEE802154,
	AF_MAX               = PF_MAX,
	SOL_RAW              = 255,
	SOL_DECNET           = 261,
	SOL_X25              = 262,
	SOL_PACKET           = 263,
	SOL_ATM              = 264,
	SOL_AAL              = 265,
	SOL_IRDA             = 266,
	SOMAXCONN            = 128,
};
struct sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
struct sockaddr_storage
  {
    sa_family_t ss_family;
    unsigned long int __ss_align;
    char __ss_padding[(128 - (2 * sizeof (unsigned long int)))];
  };
enum
  {
    MSG_OOB = 0x01,
enum {
	MSG_OOB              = MSG_OOB,
};
    MSG_PEEK = 0x02,
enum {
	MSG_PEEK             = MSG_PEEK,
};
    MSG_DONTROUTE = 0x04,
enum {
	MSG_DONTROUTE        = MSG_DONTROUTE,
};
    MSG_CTRUNC = 0x08,
enum {
	MSG_CTRUNC           = MSG_CTRUNC,
};
    MSG_PROXY = 0x10,
enum {
	MSG_PROXY            = MSG_PROXY,
};
    MSG_TRUNC = 0x20,
enum {
	MSG_TRUNC            = MSG_TRUNC,
};
    MSG_DONTWAIT = 0x40,
enum {
	MSG_DONTWAIT         = MSG_DONTWAIT,
};
    MSG_EOR = 0x80,
enum {
	MSG_EOR              = MSG_EOR,
};
    MSG_WAITALL = 0x100,
enum {
	MSG_WAITALL          = MSG_WAITALL,
};
    MSG_FIN = 0x200,
enum {
	MSG_FIN              = MSG_FIN,
};
    MSG_SYN = 0x400,
enum {
	MSG_SYN              = MSG_SYN,
};
    MSG_CONFIRM = 0x800,
enum {
	MSG_CONFIRM          = MSG_CONFIRM,
};
    MSG_RST = 0x1000,
enum {
	MSG_RST              = MSG_RST,
};
    MSG_ERRQUEUE = 0x2000,
enum {
	MSG_ERRQUEUE         = MSG_ERRQUEUE,
};
    MSG_NOSIGNAL = 0x4000,
enum {
	MSG_NOSIGNAL         = MSG_NOSIGNAL,
};
    MSG_MORE = 0x8000,
enum {
	MSG_MORE             = MSG_MORE,
};
    MSG_CMSG_CLOEXEC = 0x40000000
enum {
	MSG_CMSG_CLOEXEC     = MSG_CMSG_CLOEXEC,
};
  };
struct msghdr
  {
    void *msg_name;
    socklen_t msg_namelen;
    struct iovec *msg_iov;
    size_t msg_iovlen;
    void *msg_control;
    size_t msg_controllen;
    int msg_flags;
  };
struct cmsghdr
  {
    size_t cmsg_len;
    int cmsg_level;
    int cmsg_type;
    __extension__ unsigned char __cmsg_data [];
  };
#define CMSG_DATA(cmsg) ((cmsg)->__cmsg_data)
#define CMSG_NXTHDR(mhdr,cmsg) __cmsg_nxthdr (mhdr, cmsg)
#define CMSG_FIRSTHDR(mhdr) ((size_t) (mhdr)->msg_controllen >= sizeof (struct cmsghdr) ? (struct cmsghdr *) (mhdr)->msg_control : (struct cmsghdr *) 0)
#define CMSG_ALIGN(len) (((len) + sizeof (size_t) - 1) & (size_t) ~(sizeof (size_t) - 1))
#define CMSG_SPACE(len) (CMSG_ALIGN (len) + CMSG_ALIGN (sizeof (struct cmsghdr)))
#define CMSG_LEN(len) (CMSG_ALIGN (sizeof (struct cmsghdr)) + (len))
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__));
enum
  {
    SCM_RIGHTS = 0x01
enum {
	SCM_RIGHTS           = SCM_RIGHTS,
};
  };
struct linger
  {
    int l_onoff;
    int l_linger;
  };

// bitssockaddr.h
typedef unsigned short int sa_family_t;

// asm-genericsockios.h
enum {
	FIOSETOWN            = 0x8901,
	SIOCSPGRP            = 0x8902,
	FIOGETOWN            = 0x8903,
	SIOCGPGRP            = 0x8904,
	SIOCATMARK           = 0x8905,
	SIOCGSTAMP           = 0x8906,
	SIOCGSTAMPNS         = 0x8907,
};

// asm-genericsocket.h
enum {
	SOL_SOCKET           = 1,
	SO_DEBUG             = 1,
	SO_REUSEADDR         = 2,
	SO_TYPE              = 3,
	SO_ERROR             = 4,
	SO_DONTROUTE         = 5,
	SO_BROADCAST         = 6,
	SO_SNDBUF            = 7,
	SO_RCVBUF            = 8,
	SO_SNDBUFFORCE       = 32,
	SO_RCVBUFFORCE       = 33,
	SO_KEEPALIVE         = 9,
	SO_OOBINLINE         = 10,
	SO_NO_CHECK          = 11,
	SO_PRIORITY          = 12,
	SO_LINGER            = 13,
	SO_BSDCOMPAT         = 14,
	SO_PASSCRED          = 16,
	SO_PEERCRED          = 17,
	SO_RCVLOWAT          = 18,
	SO_SNDLOWAT          = 19,
	SO_RCVTIMEO          = 20,
	SO_SNDTIMEO          = 21,
	SO_SECURITY_AUTHENTICATION = 22,
	SO_SECURITY_ENCRYPTION_TRANSPORT = 23,
	SO_SECURITY_ENCRYPTION_NETWORK = 24,
	SO_BINDTODEVICE      = 25,
	SO_ATTACH_FILTER     = 26,
	SO_DETACH_FILTER     = 27,
	SO_PEERNAME          = 28,
	SO_TIMESTAMP         = 29,
	SCM_TIMESTAMP        = SO_TIMESTAMP,
	SO_ACCEPTCONN        = 30,
	SO_PEERSEC           = 31,
	SO_PASSSEC           = 34,
	SO_TIMESTAMPNS       = 35,
	SCM_TIMESTAMPNS      = SO_TIMESTAMPNS,
	SO_MARK              = 36,
	SO_TIMESTAMPING      = 37,
	SCM_TIMESTAMPING     = SO_TIMESTAMPING,
	SO_PROTOCOL          = 38,
	SO_DOMAIN            = 39,
};

// syssocket.h
enum
{
  SHUT_RD = 0,
enum {
	SHUT_RD              = SHUT_RD,
};
  SHUT_WR,
enum {
	SHUT_WR              = SHUT_WR,
};
  SHUT_RDWR
enum {
	SHUT_RDWR            = SHUT_RDWR,
};
};
extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__));
extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__));
extern int bind (int __fd, __const struct sockaddr * __addr, socklen_t __len)
     __attribute__ ((__nothrow__));
extern int getsockname (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__));
extern int connect (int __fd, __const struct sockaddr * __addr, socklen_t __len);
extern int getpeername (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__));
extern ssize_t send (int __fd, __const void *__buf, size_t __n, int __flags);
extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);
extern ssize_t sendto (int __fd, __const void *__buf, size_t __n,
         int __flags, __const struct sockaddr * __addr,
         socklen_t __addr_len);
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, struct sockaddr *__restrict __addr,
    socklen_t *__restrict __addr_len);
extern ssize_t sendmsg (int __fd, __const struct msghdr *__message,
   int __flags);
extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);
extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__));
extern int setsockopt (int __fd, int __level, int __optname,
         __const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__));
extern int listen (int __fd, int __n) __attribute__ ((__nothrow__));
extern int accept (int __fd, struct sockaddr *__restrict __addr,
     socklen_t *__restrict __addr_len);
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__));
extern int sockatmark (int __fd) __attribute__ ((__nothrow__));
extern int isfdtype (int __fd, int __fdtype) __attribute__ ((__nothrow__));

// netinetin.h
enum
  {
    IPPROTO_IP = 0,
enum {
	IPPROTO_IP           = IPPROTO_IP,
};
    IPPROTO_HOPOPTS = 0,
enum {
	IPPROTO_HOPOPTS      = IPPROTO_HOPOPTS,
};
    IPPROTO_ICMP = 1,
enum {
	IPPROTO_ICMP         = IPPROTO_ICMP,
};
    IPPROTO_IGMP = 2,
enum {
	IPPROTO_IGMP         = IPPROTO_IGMP,
};
    IPPROTO_IPIP = 4,
enum {
	IPPROTO_IPIP         = IPPROTO_IPIP,
};
    IPPROTO_TCP = 6,
enum {
	IPPROTO_TCP          = IPPROTO_TCP,
};
    IPPROTO_EGP = 8,
enum {
	IPPROTO_EGP          = IPPROTO_EGP,
};
    IPPROTO_PUP = 12,
enum {
	IPPROTO_PUP          = IPPROTO_PUP,
};
    IPPROTO_UDP = 17,
enum {
	IPPROTO_UDP          = IPPROTO_UDP,
};
    IPPROTO_IDP = 22,
enum {
	IPPROTO_IDP          = IPPROTO_IDP,
};
    IPPROTO_TP = 29,
enum {
	IPPROTO_TP           = IPPROTO_TP,
};
    IPPROTO_DCCP = 33,
enum {
	IPPROTO_DCCP         = IPPROTO_DCCP,
};
    IPPROTO_IPV6 = 41,
enum {
	IPPROTO_IPV6         = IPPROTO_IPV6,
};
    IPPROTO_ROUTING = 43,
enum {
	IPPROTO_ROUTING      = IPPROTO_ROUTING,
};
    IPPROTO_FRAGMENT = 44,
enum {
	IPPROTO_FRAGMENT     = IPPROTO_FRAGMENT,
};
    IPPROTO_RSVP = 46,
enum {
	IPPROTO_RSVP         = IPPROTO_RSVP,
};
    IPPROTO_GRE = 47,
enum {
	IPPROTO_GRE          = IPPROTO_GRE,
};
    IPPROTO_ESP = 50,
enum {
	IPPROTO_ESP          = IPPROTO_ESP,
};
    IPPROTO_AH = 51,
enum {
	IPPROTO_AH           = IPPROTO_AH,
};
    IPPROTO_ICMPV6 = 58,
enum {
	IPPROTO_ICMPV6       = IPPROTO_ICMPV6,
};
    IPPROTO_NONE = 59,
enum {
	IPPROTO_NONE         = IPPROTO_NONE,
};
    IPPROTO_DSTOPTS = 60,
enum {
	IPPROTO_DSTOPTS      = IPPROTO_DSTOPTS,
};
    IPPROTO_MTP = 92,
enum {
	IPPROTO_MTP          = IPPROTO_MTP,
};
    IPPROTO_ENCAP = 98,
enum {
	IPPROTO_ENCAP        = IPPROTO_ENCAP,
};
    IPPROTO_PIM = 103,
enum {
	IPPROTO_PIM          = IPPROTO_PIM,
};
    IPPROTO_COMP = 108,
enum {
	IPPROTO_COMP         = IPPROTO_COMP,
};
    IPPROTO_SCTP = 132,
enum {
	IPPROTO_SCTP         = IPPROTO_SCTP,
};
    IPPROTO_UDPLITE = 136,
enum {
	IPPROTO_UDPLITE      = IPPROTO_UDPLITE,
};
    IPPROTO_RAW = 255,
enum {
	IPPROTO_RAW          = IPPROTO_RAW,
};
    IPPROTO_MAX
  };
typedef uint16_t in_port_t;
enum
  {
    IPPORT_ECHO = 7,
    IPPORT_DISCARD = 9,
    IPPORT_SYSTAT = 11,
    IPPORT_DAYTIME = 13,
    IPPORT_NETSTAT = 15,
    IPPORT_FTP = 21,
    IPPORT_TELNET = 23,
    IPPORT_SMTP = 25,
    IPPORT_TIMESERVER = 37,
    IPPORT_NAMESERVER = 42,
    IPPORT_WHOIS = 43,
    IPPORT_MTP = 57,
    IPPORT_TFTP = 69,
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,
    IPPORT_EXECSERVER = 512,
    IPPORT_LOGINSERVER = 513,
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,
    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,
    IPPORT_RESERVED = 1024,
    IPPORT_USERRESERVED = 5000
  };
typedef uint32_t in_addr_t;
struct in_addr
  {
    in_addr_t s_addr;
  };
#define IN_CLASSA(a) ((((in_addr_t)(a)) & 0x80000000) == 0)
enum {
	IN_CLASSA_NET        = 0xff000000,
	IN_CLASSA_NSHIFT     = 24,
	IN_CLASSA_HOST       = (0xffffffff & ~IN_CLASSA_NET),
	IN_CLASSA_MAX        = 128,
};
#define IN_CLASSB(a) ((((in_addr_t)(a)) & 0xc0000000) == 0x80000000)
enum {
	IN_CLASSB_NET        = 0xffff0000,
	IN_CLASSB_NSHIFT     = 16,
	IN_CLASSB_HOST       = (0xffffffff & ~IN_CLASSB_NET),
	IN_CLASSB_MAX        = 65536,
};
#define IN_CLASSC(a) ((((in_addr_t)(a)) & 0xe0000000) == 0xc0000000)
enum {
	IN_CLASSC_NET        = 0xffffff00,
	IN_CLASSC_NSHIFT     = 8,
	IN_CLASSC_HOST       = (0xffffffff & ~IN_CLASSC_NET),
};
#define IN_CLASSD(a) ((((in_addr_t)(a)) & 0xf0000000) == 0xe0000000)
#define IN_MULTICAST(a) IN_CLASSD(a)
#define IN_EXPERIMENTAL(a) ((((in_addr_t)(a)) & 0xe0000000) == 0xe0000000)
#define IN_BADCLASS(a) ((((in_addr_t)(a)) & 0xf0000000) == 0xf0000000)
enum {
	INADDR_ANY           = ((in_addr_t) 0x00000000),
	INADDR_BROADCAST     = ((in_addr_t) 0xffffffff),
	INADDR_NONE          = ((in_addr_t) 0xffffffff),
	IN_LOOPBACKNET       = 127,
	INADDR_LOOPBACK      = ((in_addr_t) 0x7f000001),
	INADDR_UNSPEC_GROUP  = ((in_addr_t) 0xe0000000),
	INADDR_ALLHOSTS_GROUP = ((in_addr_t) 0xe0000001),
	INADDR_ALLRTRS_GROUP = ((in_addr_t) 0xe0000002),
	INADDR_MAX_LOCAL_GROUP = ((in_addr_t) 0xe00000ff),
};
struct in6_addr
  {
    union
      {
 uint8_t __u6_addr8[16];
 uint16_t __u6_addr16[8];
 uint32_t __u6_addr32[4];
      } __in6_u;
enum {
	s6_addr              = __in6_u.__u6_addr8,
	s6_addr16            = __in6_u.__u6_addr16,
	s6_addr32            = __in6_u.__u6_addr32,
};
  };
extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
enum {
	IN6ADDR_ANY_INIT     = { { { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 } } },
	IN6ADDR_LOOPBACK_INIT = { { { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1 } } },
	INET_ADDRSTRLEN      = 16,
	INET6_ADDRSTRLEN     = 46,
};
struct sockaddr_in
  {
    sa_family_t sin_family;
    in_port_t sin_port;
    struct in_addr sin_addr;
    unsigned char sin_zero[sizeof (struct sockaddr) -
      (sizeof (unsigned short int)) -
      sizeof (in_port_t) -
      sizeof (struct in_addr)];
  };
struct sockaddr_in6
  {
    sa_family_t sin6_family;
    in_port_t sin6_port;
    uint32_t sin6_flowinfo;
    struct in6_addr sin6_addr;
    uint32_t sin6_scope_id;
  };
struct ip_mreq
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
  };
struct ip_mreq_source
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
    struct in_addr imr_sourceaddr;
  };
struct ipv6_mreq
  {
    struct in6_addr ipv6mr_multiaddr;
    unsigned int ipv6mr_interface;
  };
struct group_req
  {
    uint32_t gr_interface;
    struct sockaddr_storage gr_group;
  };
struct group_source_req
  {
    uint32_t gsr_interface;
    struct sockaddr_storage gsr_group;
    struct sockaddr_storage gsr_source;
  };
struct ip_msfilter
  {
    struct in_addr imsf_multiaddr;
    struct in_addr imsf_interface;
    uint32_t imsf_fmode;
    uint32_t imsf_numsrc;
    struct in_addr imsf_slist[1];
  };
#define IP_MSFILTER_SIZE(numsrc) (sizeof (struct ip_msfilter) - sizeof (struct in_addr) + (numsrc) * sizeof (struct in_addr))
struct group_filter
  {
    uint32_t gf_interface;
    struct sockaddr_storage gf_group;
    uint32_t gf_fmode;
    uint32_t gf_numsrc;
    struct sockaddr_storage gf_slist[1];
};
#define GROUP_FILTER_SIZE(numsrc) (sizeof (struct group_filter) - sizeof (struct sockaddr_storage) + ((numsrc) * sizeof (struct sockaddr_storage)))
extern uint32_t ntohl (uint32_t __netlong) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));
#define IN6_IS_ADDR_UNSPECIFIED(a) (((__const uint32_t *) (a))[0] == 0 && ((__const uint32_t *) (a))[1] == 0 && ((__const uint32_t *) (a))[2] == 0 && ((__const uint32_t *) (a))[3] == 0)
#define IN6_IS_ADDR_LOOPBACK(a) (((__const uint32_t *) (a))[0] == 0 && ((__const uint32_t *) (a))[1] == 0 && ((__const uint32_t *) (a))[2] == 0 && ((__const uint32_t *) (a))[3] == htonl (1))
#define IN6_IS_ADDR_MULTICAST(a) (((__const uint8_t *) (a))[0] == 0xff)
#define IN6_IS_ADDR_LINKLOCAL(a) ((((__const uint32_t *) (a))[0] & htonl (0xffc00000)) == htonl (0xfe800000))
#define IN6_IS_ADDR_SITELOCAL(a) ((((__const uint32_t *) (a))[0] & htonl (0xffc00000)) == htonl (0xfec00000))
#define IN6_IS_ADDR_V4MAPPED(a) ((((__const uint32_t *) (a))[0] == 0) && (((__const uint32_t *) (a))[1] == 0) && (((__const uint32_t *) (a))[2] == htonl (0xffff)))
#define IN6_IS_ADDR_V4COMPAT(a) ((((__const uint32_t *) (a))[0] == 0) && (((__const uint32_t *) (a))[1] == 0) && (((__const uint32_t *) (a))[2] == 0) && (ntohl (((__const uint32_t *) (a))[3]) > 1))
#define IN6_ARE_ADDR_EQUAL(a,b) ((((__const uint32_t *) (a))[0] == ((__const uint32_t *) (b))[0]) && (((__const uint32_t *) (a))[1] == ((__const uint32_t *) (b))[1]) && (((__const uint32_t *) (a))[2] == ((__const uint32_t *) (b))[2]) && (((__const uint32_t *) (a))[3] == ((__const uint32_t *) (b))[3]))
extern int bindresvport (int __sockfd, struct sockaddr_in *__sock_in) __attribute__ ((__nothrow__));
extern int bindresvport6 (int __sockfd, struct sockaddr_in6 *__sock_in)
     __attribute__ ((__nothrow__));
#define IN6_IS_ADDR_MC_NODELOCAL(a) (IN6_IS_ADDR_MULTICAST(a) && ((((__const uint8_t *) (a))[1] & 0xf) == 0x1))
#define IN6_IS_ADDR_MC_LINKLOCAL(a) (IN6_IS_ADDR_MULTICAST(a) && ((((__const uint8_t *) (a))[1] & 0xf) == 0x2))
#define IN6_IS_ADDR_MC_SITELOCAL(a) (IN6_IS_ADDR_MULTICAST(a) && ((((__const uint8_t *) (a))[1] & 0xf) == 0x5))
#define IN6_IS_ADDR_MC_ORGLOCAL(a) (IN6_IS_ADDR_MULTICAST(a) && ((((__const uint8_t *) (a))[1] & 0xf) == 0x8))
#define IN6_IS_ADDR_MC_GLOBAL(a) (IN6_IS_ADDR_MULTICAST(a) && ((((__const uint8_t *) (a))[1] & 0xf) == 0xe))

// bitsin.h
enum {
	IP_OPTIONS           = 4,
	IP_HDRINCL           = 3,
	IP_TOS               = 1,
	IP_TTL               = 2,
	IP_RECVOPTS          = 6,
	IP_RECVRETOPTS       = IP_RETOPTS,
	IP_RETOPTS           = 7,
	IP_MULTICAST_IF      = 32,
	IP_MULTICAST_TTL     = 33,
	IP_MULTICAST_LOOP    = 34,
	IP_ADD_MEMBERSHIP    = 35,
	IP_DROP_MEMBERSHIP   = 36,
	IP_UNBLOCK_SOURCE    = 37,
	IP_BLOCK_SOURCE      = 38,
	IP_ADD_SOURCE_MEMBERSHIP = 39,
	IP_DROP_SOURCE_MEMBERSHIP = 40,
	IP_MSFILTER          = 41,
	MCAST_JOIN_GROUP     = 42,
	MCAST_BLOCK_SOURCE   = 43,
	MCAST_UNBLOCK_SOURCE = 44,
	MCAST_LEAVE_GROUP    = 45,
	MCAST_JOIN_SOURCE_GROUP = 46,
	MCAST_LEAVE_SOURCE_GROUP = 47,
	MCAST_MSFILTER       = 48,
	MCAST_EXCLUDE        = 0,
	MCAST_INCLUDE        = 1,
	IP_ROUTER_ALERT      = 5,
	IP_PKTINFO           = 8,
	IP_PKTOPTIONS        = 9,
	IP_PMTUDISC          = 10,
	IP_MTU_DISCOVER      = 10,
	IP_RECVERR           = 11,
	IP_RECVTTL           = 12,
	IP_RECVTOS           = 13,
	IP_PMTUDISC_DONT     = 0,
	IP_PMTUDISC_WANT     = 1,
	IP_PMTUDISC_DO       = 2,
	IP_PMTUDISC_PROBE    = 3,
	SOL_IP               = 0,
	IP_DEFAULT_MULTICAST_TTL = 1,
	IP_DEFAULT_MULTICAST_LOOP = 1,
	IP_MAX_MEMBERSHIPS   = 20,
};
struct ip_opts
  {
    struct in_addr ip_dst;
    char ip_opts[40];
  };
struct ip_mreqn
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_address;
    int imr_ifindex;
  };
struct in_pktinfo
  {
    int ipi_ifindex;
    struct in_addr ipi_spec_dst;
    struct in_addr ipi_addr;
  };
enum {
	IPV6_ADDRFORM        = 1,
	IPV6_2292PKTINFO     = 2,
	IPV6_2292HOPOPTS     = 3,
	IPV6_2292DSTOPTS     = 4,
	IPV6_2292RTHDR       = 5,
	IPV6_2292PKTOPTIONS  = 6,
	IPV6_CHECKSUM        = 7,
	IPV6_2292HOPLIMIT    = 8,
	SCM_SRCRT            = IPV6_RXSRCRT,
	IPV6_NEXTHOP         = 9,
	IPV6_AUTHHDR         = 10,
	IPV6_UNICAST_HOPS    = 16,
	IPV6_MULTICAST_IF    = 17,
	IPV6_MULTICAST_HOPS  = 18,
	IPV6_MULTICAST_LOOP  = 19,
	IPV6_JOIN_GROUP      = 20,
	IPV6_LEAVE_GROUP     = 21,
	IPV6_ROUTER_ALERT    = 22,
	IPV6_MTU_DISCOVER    = 23,
	IPV6_MTU             = 24,
	IPV6_RECVERR         = 25,
	IPV6_V6ONLY          = 26,
	IPV6_JOIN_ANYCAST    = 27,
	IPV6_LEAVE_ANYCAST   = 28,
	IPV6_IPSEC_POLICY    = 34,
	IPV6_XFRM_POLICY     = 35,
	IPV6_RECVPKTINFO     = 49,
	IPV6_PKTINFO         = 50,
	IPV6_RECVHOPLIMIT    = 51,
	IPV6_HOPLIMIT        = 52,
	IPV6_RECVHOPOPTS     = 53,
	IPV6_HOPOPTS         = 54,
	IPV6_RTHDRDSTOPTS    = 55,
	IPV6_RECVRTHDR       = 56,
	IPV6_RTHDR           = 57,
	IPV6_RECVDSTOPTS     = 58,
	IPV6_DSTOPTS         = 59,
	IPV6_RECVTCLASS      = 66,
	IPV6_TCLASS          = 67,
	IPV6_ADD_MEMBERSHIP  = IPV6_JOIN_GROUP,
	IPV6_DROP_MEMBERSHIP = IPV6_LEAVE_GROUP,
	IPV6_RXHOPOPTS       = IPV6_HOPOPTS,
	IPV6_RXDSTOPTS       = IPV6_DSTOPTS,
	IPV6_PMTUDISC_DONT   = 0,
	IPV6_PMTUDISC_WANT   = 1,
	IPV6_PMTUDISC_DO     = 2,
	IPV6_PMTUDISC_PROBE  = 3,
	SOL_IPV6             = 41,
	SOL_ICMPV6           = 58,
	IPV6_RTHDR_LOOSE     = 0,
	IPV6_RTHDR_STRICT    = 1,
	IPV6_RTHDR_TYPE_0    = 0,
};

// arpainet.h
extern in_addr_t inet_addr (__const char *__cp) __attribute__ ((__nothrow__));
extern in_addr_t inet_lnaof (struct in_addr __in) __attribute__ ((__nothrow__));
extern struct in_addr inet_makeaddr (in_addr_t __net, in_addr_t __host)
     __attribute__ ((__nothrow__));
extern in_addr_t inet_netof (struct in_addr __in) __attribute__ ((__nothrow__));
extern in_addr_t inet_network (__const char *__cp) __attribute__ ((__nothrow__));
extern char *inet_ntoa (struct in_addr __in) __attribute__ ((__nothrow__));
extern int inet_pton (int __af, __const char *__restrict __cp,
        void *__restrict __buf) __attribute__ ((__nothrow__));
extern __const char *inet_ntop (int __af, __const void *__restrict __cp,
    char *__restrict __buf, socklen_t __len)
     __attribute__ ((__nothrow__));
extern int inet_aton (__const char *__cp, struct in_addr *__inp) __attribute__ ((__nothrow__));
extern char *inet_neta (in_addr_t __net, char *__buf, size_t __len) __attribute__ ((__nothrow__));
extern char *inet_net_ntop (int __af, __const void *__cp, int __bits,
       char *__buf, size_t __len) __attribute__ ((__nothrow__));
extern int inet_net_pton (int __af, __const char *__cp,
     void *__buf, size_t __len) __attribute__ ((__nothrow__));
extern unsigned int inet_nsap_addr (__const char *__cp,
        unsigned char *__buf, int __len) __attribute__ ((__nothrow__));
extern char *inet_nsap_ntoa (int __len, __const unsigned char *__cp,
        char *__buf) __attribute__ ((__nothrow__));

// bitsdirent.h
struct dirent
  {
    __ino_t d_ino;
    __off_t d_off;
    unsigned short int d_reclen;
    unsigned char d_type;
    char d_name[256];
  };
enum {
	d_fileno             = d_ino,
};

// dirent.h
typedef struct __dirstream DIR;
extern DIR *opendir (__const char *__name) __attribute__ ((__nonnull__ (1)));
extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern struct dirent *readdir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern int readdir_r (DIR *__restrict __dirp,
        struct dirent *__restrict __entry,
        struct dirent **__restrict __result)
     __attribute__ ((__nonnull__ (1, 2, 3)));
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
enum {
	MAXNAMLEN            = NAME_MAX,
};
extern int scandir (__const char *__restrict __dir,
      struct dirent ***__restrict __namelist,
      int (*__selector) (__const struct dirent *),
      int (*__cmp) (__const struct dirent **,
      __const struct dirent **))
     __attribute__ ((__nonnull__ (1, 2)));
extern int alphasort (__const struct dirent **__e1,
        __const struct dirent **__e2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern __ssize_t getdirentries (int __fd, char *__restrict __buf,
    size_t __nbytes,
    __off_t *__restrict __basep)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 4)));

// linuxlimits.h
enum {
	NR_OPEN              = 1024,
	NGROUPS_MAX          = 65536,
	ARG_MAX              = 131072,
	LINK_MAX             = 127,
	MAX_CANON            = 255,
	MAX_INPUT            = 255,
	NAME_MAX             = 255,
	PATH_MAX             = 4096,
	PIPE_BUF             = 4096,
	XATTR_NAME_MAX       = 255,
	XATTR_SIZE_MAX       = 65536,
	XATTR_LIST_MAX       = 65536,
	RTSIG_MAX            = 32,
};

// bitslocal_lim.h
enum {
	PTHREAD_KEYS_MAX     = 1024,
	PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS,
	AIO_PRIO_DELTA_MAX   = 20,
	PTHREAD_STACK_MIN    = 16384,
	DELAYTIMER_MAX       = 2147483647,
	TTY_NAME_MAX         = 32,
	LOGIN_NAME_MAX       = 256,
	HOST_NAME_MAX        = 64,
	MQ_PRIO_MAX          = 32768,
	SEM_VALUE_MAX        = (2147483647),
};

// bitsposix1_lim.h
enum {
	SSIZE_MAX            = LONG_MAX,
};

// asm-genericerrno-base.h
enum {
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
	EAGAIN               = 11,
	ENOMEM               = 12,
	EACCES               = 13,
	EFAULT               = 14,
	ENOTBLK              = 15,
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
};

// asm-genericerrno.h
enum {
	EDEADLK              = 35,
	ENAMETOOLONG         = 36,
	ENOLCK               = 37,
	ENOSYS               = 38,
	ENOTEMPTY            = 39,
	ELOOP                = 40,
	EWOULDBLOCK          = EAGAIN,
	ENOMSG               = 42,
	EIDRM                = 43,
	ECHRNG               = 44,
	EL2NSYNC             = 45,
	EL3HLT               = 46,
	EL3RST               = 47,
	ELNRNG               = 48,
	EUNATCH              = 49,
	ENOCSI               = 50,
	EL2HLT               = 51,
	EBADE                = 52,
	EBADR                = 53,
	EXFULL               = 54,
	ENOANO               = 55,
	EBADRQC              = 56,
	EBADSLT              = 57,
	EDEADLOCK            = EDEADLK,
	EBFONT               = 59,
	ENOSTR               = 60,
	ENODATA              = 61,
	ETIME                = 62,
	ENOSR                = 63,
	ENONET               = 64,
	ENOPKG               = 65,
	EREMOTE              = 66,
	ENOLINK              = 67,
	EADV                 = 68,
	ESRMNT               = 69,
	ECOMM                = 70,
	EPROTO               = 71,
	EMULTIHOP            = 72,
	EDOTDOT              = 73,
	EBADMSG              = 74,
	EOVERFLOW            = 75,
	ENOTUNIQ             = 76,
	EBADFD               = 77,
	EREMCHG              = 78,
	ELIBACC              = 79,
	ELIBBAD              = 80,
	ELIBSCN              = 81,
	ELIBMAX              = 82,
	ELIBEXEC             = 83,
	EILSEQ               = 84,
	ERESTART             = 85,
	ESTRPIPE             = 86,
	EUSERS               = 87,
	ENOTSOCK             = 88,
	EDESTADDRREQ         = 89,
	EMSGSIZE             = 90,
	EPROTOTYPE           = 91,
	ENOPROTOOPT          = 92,
	EPROTONOSUPPORT      = 93,
	ESOCKTNOSUPPORT      = 94,
	EOPNOTSUPP           = 95,
	EPFNOSUPPORT         = 96,
	EAFNOSUPPORT         = 97,
	EADDRINUSE           = 98,
	EADDRNOTAVAIL        = 99,
	ENETDOWN             = 100,
	ENETUNREACH          = 101,
	ENETRESET            = 102,
	ECONNABORTED         = 103,
	ECONNRESET           = 104,
	ENOBUFS              = 105,
	EISCONN              = 106,
	ENOTCONN             = 107,
	ESHUTDOWN            = 108,
	ETOOMANYREFS         = 109,
	ETIMEDOUT            = 110,
	ECONNREFUSED         = 111,
	EHOSTDOWN            = 112,
	EHOSTUNREACH         = 113,
	EALREADY             = 114,
	EINPROGRESS          = 115,
	ESTALE               = 116,
	EUCLEAN              = 117,
	ENOTNAM              = 118,
	ENAVAIL              = 119,
	EISNAM               = 120,
	EREMOTEIO            = 121,
	EDQUOT               = 122,
	ENOMEDIUM            = 123,
	EMEDIUMTYPE          = 124,
	ECANCELED            = 125,
	ENOKEY               = 126,
	EKEYEXPIRED          = 127,
	EKEYREVOKED          = 128,
	EKEYREJECTED         = 129,
	EOWNERDEAD           = 130,
	ENOTRECOVERABLE      = 131,
	ERFKILL              = 132,
};

// bitserrno.h
enum {
	ENOTSUP              = EOPNOTSUPP,
};
extern int *__errno_location (void) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
enum {
	errno                = (*__errno_location ()),
};

// bitsfcntl.h
enum {
	O_ACCMODE            = 0003,
	O_RDONLY             = 00,
	O_WRONLY             = 01,
	O_RDWR               = 02,
	O_CREAT              = 0100,
	O_EXCL               = 0200,
	O_NOCTTY             = 0400,
	O_TRUNC              = 01000,
	O_APPEND             = 02000,
	O_NONBLOCK           = 04000,
	O_NDELAY             = O_NONBLOCK,
	O_SYNC               = 010000,
	O_FSYNC              = O_SYNC,
	O_ASYNC              = 020000,
	O_DSYNC              = O_SYNC,
	O_RSYNC              = O_SYNC,
	F_DUPFD              = 0,
	F_GETFD              = 1,
	F_SETFD              = 2,
	F_GETFL              = 3,
	F_SETFL              = 4,
	F_GETLK              = 5,
	F_SETLK              = 6,
	F_SETLKW             = 7,
	F_GETLK64            = 5,
	F_SETLK64            = 6,
	F_SETLKW64           = 7,
	FD_CLOEXEC           = 1,
	F_RDLCK              = 0,
	F_WRLCK              = 1,
	F_UNLCK              = 2,
	F_EXLCK              = 4,
	F_SHLCK              = 8,
};
struct flock
  {
    short int l_type;
    short int l_whence;
    __off_t l_start;
    __off_t l_len;
    __pid_t l_pid;
  };
enum {
	POSIX_FADV_NORMAL    = 0,
	POSIX_FADV_RANDOM    = 1,
	POSIX_FADV_SEQUENTIAL = 2,
	POSIX_FADV_WILLNEED  = 3,
	POSIX_FADV_DONTNEED  = 4,
	POSIX_FADV_NOREUSE   = 5,
};

// fcntl.h
enum {
	R_OK                 = 4,
	W_OK                 = 2,
	X_OK                 = 1,
	F_OK                 = 0,
};
extern int fcntl (int __fd, int __cmd, ...);
extern int open (__const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int creat (__const char *__file, __mode_t __mode) __attribute__ ((__nonnull__ (1)));
enum {
	F_ULOCK              = 0,
	F_LOCK               = 1,
	F_TLOCK              = 2,
	F_TEST               = 3,
};
extern int lockf (int __fd, int __cmd, __off_t __len);
extern int posix_fadvise (int __fd, __off_t __offset, __off_t __len,
     int __advise) __attribute__ ((__nothrow__));
extern int posix_fallocate (int __fd, __off_t __offset, __off_t __len);

// grp.h
struct group
  {
    char *gr_name;
    char *gr_passwd;
    __gid_t gr_gid;
    char **gr_mem;
  };
extern void setgrent (void);
extern void endgrent (void);
extern struct group *getgrent (void);
extern struct group *fgetgrent (FILE *__stream);
extern struct group *getgrgid (__gid_t __gid);
extern struct group *getgrnam (__const char *__name);
enum {
	NSS_BUFLEN_GROUP     = 1024,
};
extern int getgrgid_r (__gid_t __gid, struct group *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct group **__restrict __result);
extern int getgrnam_r (__const char *__restrict __name,
         struct group *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct group **__restrict __result);
extern int fgetgrent_r (FILE *__restrict __stream,
   struct group *__restrict __resultbuf,
   char *__restrict __buffer, size_t __buflen,
   struct group **__restrict __result);

// stdio.h
struct _IO_FILE;
typedef struct _IO_FILE FILE;
typedef struct _IO_FILE __FILE;
typedef _G_fpos_t fpos_t;
enum {
	BUFSIZ               = _IO_BUFSIZ,
	SEEK_SET             = 0,
	SEEK_CUR             = 1,
	SEEK_END             = 2,
	P_tmpdir             = "tmp",
};
extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;
enum {
	stdin                = stdin,
	stdout               = stdout,
	stderr               = stderr,
};
extern int remove (__const char *__filename) __attribute__ ((__nothrow__));
extern int rename (__const char *__old, __const char *__new) __attribute__ ((__nothrow__));
extern FILE *tmpfile (void) ;
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__)) ;
extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__)) ;
extern char *tempnam (__const char *__dir, __const char *__pfx)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;
extern int fclose (FILE *__stream);
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (__const char *__restrict __filename,
      __const char *__restrict __modes) ;
extern FILE *freopen (__const char *__restrict __filename,
        __const char *__restrict __modes,
        FILE *__restrict __stream) ;
extern FILE *fdopen (int __fd, __const char *__modes) __attribute__ ((__nothrow__)) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__));
extern int fprintf (FILE *__restrict __stream,
      __const char *__restrict __format, ...);
extern int printf (__const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      __const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, __const char *__restrict __format,
       __gnuc_va_list __arg);
extern int vprintf (__const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, __const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char *__restrict __s, size_t __maxlen,
       __const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        __const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int fscanf (FILE *__restrict __stream,
     __const char *__restrict __format, ...) ;
extern int scanf (__const char *__restrict __format, ...) ;
extern int sscanf (__const char *__restrict __s,
     __const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int fscanf (FILE *__restrict __stream, __const char *__restrict __format, ...) 
                               ;
extern int scanf (__const char *__restrict __format, ...) 
                              ;
extern int sscanf (__const char *__restrict __s, __const char *__restrict __format, ...) 
                          __attribute__ ((__nothrow__));
extern int vfscanf (FILE *__restrict __s, __const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (__const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (__const char *__restrict __s,
      __const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, __const char *__restrict __format, __gnuc_va_list __arg) 
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (__const char *__restrict __format, __gnuc_va_list __arg) 
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (__const char *__restrict __s, __const char *__restrict __format, __gnuc_va_list __arg) 
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
#define getc(_fp) _IO_getc (_fp)
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
#define putc(_ch,_fp) _IO_putc (_ch, _fp)
extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
extern char *gets (char *__s) ;
extern int fputs (__const char *__restrict __s, FILE *__restrict __stream);
extern int puts (__const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite (__const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (__const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream);
extern int fseeko (FILE *__stream, __off_t __off, int __whence);
extern __off_t ftello (FILE *__stream) ;
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);
extern int fsetpos (FILE *__stream, __const fpos_t *__pos);
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__)) ;
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__)) ;
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__)) ;
extern void perror (__const char *__s);
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__)) ;
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__)) ;
extern FILE *popen (__const char *__command, __const char *__modes) ;
extern int pclose (FILE *__stream);
extern char *ctermid (char *__s) __attribute__ ((__nothrow__));
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__)) ;
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__));

// limits.h
enum {
	MB_LEN_MAX           = 16,
	LLONG_MIN            = (-LLONG_MAX-1),
	LLONG_MAX            = __LONG_LONG_MAX__,
	ULLONG_MAX           = (LLONG_MAX * 2ULL + 1),
};

// bitsposix2_lim.h
enum {
	BC_BASE_MAX          = _POSIX2_BC_BASE_MAX,
	BC_DIM_MAX           = _POSIX2_BC_DIM_MAX,
	BC_SCALE_MAX         = _POSIX2_BC_SCALE_MAX,
	BC_STRING_MAX        = _POSIX2_BC_STRING_MAX,
	COLL_WEIGHTS_MAX     = 255,
	EXPR_NEST_MAX        = _POSIX2_EXPR_NEST_MAX,
	LINE_MAX             = _POSIX2_LINE_MAX,
	CHARCLASS_NAME_MAX   = 2048,
	RE_DUP_MAX           = (0x7fff),
};

// usrlibgccx86_64-linux-gnu4.8include-fixedlimits.h
enum {
	CHAR_BIT             = __CHAR_BIT__,
	SCHAR_MIN            = (-SCHAR_MAX - 1),
	SCHAR_MAX            = __SCHAR_MAX__,
	UCHAR_MAX            = (SCHAR_MAX * 2 + 1),
	CHAR_MIN             = SCHAR_MIN,
	CHAR_MAX             = SCHAR_MAX,
	SHRT_MIN             = (-SHRT_MAX - 1),
	SHRT_MAX             = __SHRT_MAX__,
	USHRT_MAX            = (SHRT_MAX * 2 + 1),
	INT_MIN              = (-INT_MAX - 1),
	INT_MAX              = __INT_MAX__,
	UINT_MAX             = (INT_MAX * 2U + 1U),
	LONG_MIN             = (-LONG_MAX - 1L),
	LONG_MAX             = __LONG_MAX__,
	ULONG_MAX            = (LONG_MAX * 2UL + 1UL),
};

// netif.h
enum {
	IF_NAMESIZE          = 16,
};
struct if_nameindex
  {
    unsigned int if_index;
    char *if_name;
  };
enum
  {
    IFF_UP = 0x1,
enum {
	IFF_UP               = IFF_UP,
};
    IFF_BROADCAST = 0x2,
enum {
	IFF_BROADCAST        = IFF_BROADCAST,
};
    IFF_DEBUG = 0x4,
enum {
	IFF_DEBUG            = IFF_DEBUG,
};
    IFF_LOOPBACK = 0x8,
enum {
	IFF_LOOPBACK         = IFF_LOOPBACK,
};
    IFF_POINTOPOINT = 0x10,
enum {
	IFF_POINTOPOINT      = IFF_POINTOPOINT,
};
    IFF_NOTRAILERS = 0x20,
enum {
	IFF_NOTRAILERS       = IFF_NOTRAILERS,
};
    IFF_RUNNING = 0x40,
enum {
	IFF_RUNNING          = IFF_RUNNING,
};
    IFF_NOARP = 0x80,
enum {
	IFF_NOARP            = IFF_NOARP,
};
    IFF_PROMISC = 0x100,
enum {
	IFF_PROMISC          = IFF_PROMISC,
};
    IFF_ALLMULTI = 0x200,
enum {
	IFF_ALLMULTI         = IFF_ALLMULTI,
};
    IFF_MASTER = 0x400,
enum {
	IFF_MASTER           = IFF_MASTER,
};
    IFF_SLAVE = 0x800,
enum {
	IFF_SLAVE            = IFF_SLAVE,
};
    IFF_MULTICAST = 0x1000,
enum {
	IFF_MULTICAST        = IFF_MULTICAST,
};
    IFF_PORTSEL = 0x2000,
enum {
	IFF_PORTSEL          = IFF_PORTSEL,
};
    IFF_AUTOMEDIA = 0x4000,
enum {
	IFF_AUTOMEDIA        = IFF_AUTOMEDIA,
};
    IFF_DYNAMIC = 0x8000
enum {
	IFF_DYNAMIC          = IFF_DYNAMIC,
};
  };
struct ifaddr
  {
    struct sockaddr ifa_addr;
    union
      {
 struct sockaddr ifu_broadaddr;
 struct sockaddr ifu_dstaddr;
      } ifa_ifu;
    struct iface *ifa_ifp;
    struct ifaddr *ifa_next;
  };
enum {
	ifa_broadaddr        = ifa_ifu.ifu_broadaddr,
	ifa_dstaddr          = ifa_ifu.ifu_dstaddr,
};
struct ifmap
  {
    unsigned long int mem_start;
    unsigned long int mem_end;
    unsigned short int base_addr;
    unsigned char irq;
    unsigned char dma;
    unsigned char port;
  };
struct ifreq
  {
enum {
	IFHWADDRLEN          = 6,
	IFNAMSIZ             = IF_NAMESIZE,
};
    union
      {
 char ifrn_name[16];
      } ifr_ifrn;
    union
      {
 struct sockaddr ifru_addr;
 struct sockaddr ifru_dstaddr;
 struct sockaddr ifru_broadaddr;
 struct sockaddr ifru_netmask;
 struct sockaddr ifru_hwaddr;
 short int ifru_flags;
 int ifru_ivalue;
 int ifru_mtu;
 struct ifmap ifru_map;
 char ifru_slave[16];
 char ifru_newname[16];
 __caddr_t ifru_data;
      } ifr_ifru;
  };
enum {
	ifr_name             = ifr_ifrn.ifrn_name,
	ifr_hwaddr           = ifr_ifru.ifru_hwaddr,
	ifr_addr             = ifr_ifru.ifru_addr,
	ifr_dstaddr          = ifr_ifru.ifru_dstaddr,
	ifr_broadaddr        = ifr_ifru.ifru_broadaddr,
	ifr_netmask          = ifr_ifru.ifru_netmask,
	ifr_flags            = ifr_ifru.ifru_flags,
	ifr_metric           = ifr_ifru.ifru_ivalue,
	ifr_mtu              = ifr_ifru.ifru_mtu,
	ifr_map              = ifr_ifru.ifru_map,
	ifr_slave            = ifr_ifru.ifru_slave,
	ifr_data             = ifr_ifru.ifru_data,
	ifr_ifindex          = ifr_ifru.ifru_ivalue,
	ifr_bandwidth        = ifr_ifru.ifru_ivalue,
	ifr_qlen             = ifr_ifru.ifru_ivalue,
	ifr_newname          = ifr_ifru.ifru_newname,
};
struct ifconf
  {
    int ifc_len;
    union
      {
 __caddr_t ifcu_buf;
 struct ifreq *ifcu_req;
      } ifc_ifcu;
  };
enum {
	ifc_buf              = ifc_ifcu.ifcu_buf,
	ifc_req              = ifc_ifcu.ifcu_req,
};
extern unsigned int if_nametoindex (__const char *__ifname) __attribute__ ((__nothrow__));
extern char *if_indextoname (unsigned int __ifindex, char *__ifname) __attribute__ ((__nothrow__));
extern struct if_nameindex *if_nameindex (void) __attribute__ ((__nothrow__));
extern void if_freenameindex (struct if_nameindex *__ptr) __attribute__ ((__nothrow__));

// rpcnetdb.h
struct rpcent
{
  char *r_name;
  char **r_aliases;
  int r_number;
};
extern void setrpcent (int __stayopen) __attribute__ ((__nothrow__));
extern void endrpcent (void) __attribute__ ((__nothrow__));
extern struct rpcent *getrpcbyname (__const char *__name) __attribute__ ((__nothrow__));
extern struct rpcent *getrpcbynumber (int __number) __attribute__ ((__nothrow__));
extern struct rpcent *getrpcent (void) __attribute__ ((__nothrow__));
extern int getrpcbyname_r (__const char *__name, struct rpcent *__result_buf,
      char *__buffer, size_t __buflen,
      struct rpcent **__result) __attribute__ ((__nothrow__));
extern int getrpcbynumber_r (int __number, struct rpcent *__result_buf,
        char *__buffer, size_t __buflen,
        struct rpcent **__result) __attribute__ ((__nothrow__));
extern int getrpcent_r (struct rpcent *__result_buf, char *__buffer,
   size_t __buflen, struct rpcent **__result) __attribute__ ((__nothrow__));

// bitsnetdb.h
struct netent
{
  char *n_name;
  char **n_aliases;
  int n_addrtype;
  uint32_t n_net;
};

// netdb.h
enum {
	h_errno              = (*__h_errno_location ()),
};
extern int *__h_errno_location (void) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
enum {
	HOST_NOT_FOUND       = 1,
	TRY_AGAIN            = 2,
	NO_RECOVERY          = 3,
	NO_DATA              = 4,
	NETDB_INTERNAL       = -1,
	NETDB_SUCCESS        = 0,
	NO_ADDRESS           = NO_DATA,
	IPPORT_RESERVED      = 1024,
};
extern void herror (__const char *__str) __attribute__ ((__nothrow__));
extern __const char *hstrerror (int __err_num) __attribute__ ((__nothrow__));
struct hostent
{
  char *h_name;
  char **h_aliases;
  int h_addrtype;
  int h_length;
  char **h_addr_list;
enum {
	h_addr               = h_addr_list[0],
};
};
extern void sethostent (int __stay_open);
extern void endhostent (void);
extern struct hostent *gethostent (void);
extern struct hostent *gethostbyaddr (__const void *__addr, __socklen_t __len,
          int __type);
extern struct hostent *gethostbyname (__const char *__name);
extern struct hostent *gethostbyname2 (__const char *__name, int __af);
extern int gethostent_r (struct hostent *__restrict __result_buf,
    char *__restrict __buf, size_t __buflen,
    struct hostent **__restrict __result,
    int *__restrict __h_errnop);
extern int gethostbyaddr_r (__const void *__restrict __addr, __socklen_t __len,
       int __type,
       struct hostent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct hostent **__restrict __result,
       int *__restrict __h_errnop);
extern int gethostbyname_r (__const char *__restrict __name,
       struct hostent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct hostent **__restrict __result,
       int *__restrict __h_errnop);
extern int gethostbyname2_r (__const char *__restrict __name, int __af,
        struct hostent *__restrict __result_buf,
        char *__restrict __buf, size_t __buflen,
        struct hostent **__restrict __result,
        int *__restrict __h_errnop);
extern void setnetent (int __stay_open);
extern void endnetent (void);
extern struct netent *getnetent (void);
extern struct netent *getnetbyaddr (uint32_t __net, int __type);
extern struct netent *getnetbyname (__const char *__name);
extern int getnetent_r (struct netent *__restrict __result_buf,
   char *__restrict __buf, size_t __buflen,
   struct netent **__restrict __result,
   int *__restrict __h_errnop);
extern int getnetbyaddr_r (uint32_t __net, int __type,
      struct netent *__restrict __result_buf,
      char *__restrict __buf, size_t __buflen,
      struct netent **__restrict __result,
      int *__restrict __h_errnop);
extern int getnetbyname_r (__const char *__restrict __name,
      struct netent *__restrict __result_buf,
      char *__restrict __buf, size_t __buflen,
      struct netent **__restrict __result,
      int *__restrict __h_errnop);
struct servent
{
  char *s_name;
  char **s_aliases;
  int s_port;
  char *s_proto;
};
extern void setservent (int __stay_open);
extern void endservent (void);
extern struct servent *getservent (void);
extern struct servent *getservbyname (__const char *__name,
          __const char *__proto);
extern struct servent *getservbyport (int __port, __const char *__proto);
extern int getservent_r (struct servent *__restrict __result_buf,
    char *__restrict __buf, size_t __buflen,
    struct servent **__restrict __result);
extern int getservbyname_r (__const char *__restrict __name,
       __const char *__restrict __proto,
       struct servent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct servent **__restrict __result);
extern int getservbyport_r (int __port, __const char *__restrict __proto,
       struct servent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct servent **__restrict __result);
struct protoent
{
  char *p_name;
  char **p_aliases;
  int p_proto;
};
extern void setprotoent (int __stay_open);
extern void endprotoent (void);
extern struct protoent *getprotoent (void);
extern struct protoent *getprotobyname (__const char *__name);
extern struct protoent *getprotobynumber (int __proto);
extern int getprotoent_r (struct protoent *__restrict __result_buf,
     char *__restrict __buf, size_t __buflen,
     struct protoent **__restrict __result);
extern int getprotobyname_r (__const char *__restrict __name,
        struct protoent *__restrict __result_buf,
        char *__restrict __buf, size_t __buflen,
        struct protoent **__restrict __result);
extern int getprotobynumber_r (int __proto,
          struct protoent *__restrict __result_buf,
          char *__restrict __buf, size_t __buflen,
          struct protoent **__restrict __result);
extern int setnetgrent (__const char *__netgroup);
extern void endnetgrent (void);
extern int getnetgrent (char **__restrict __hostp,
   char **__restrict __userp,
   char **__restrict __domainp);
extern int innetgr (__const char *__netgroup, __const char *__host,
      __const char *__user, __const char *__domain);
extern int getnetgrent_r (char **__restrict __hostp,
     char **__restrict __userp,
     char **__restrict __domainp,
     char *__restrict __buffer, size_t __buflen);
struct addrinfo
{
  int ai_flags;
  int ai_family;
  int ai_socktype;
  int ai_protocol;
  socklen_t ai_addrlen;
  struct sockaddr *ai_addr;
  char *ai_canonname;
  struct addrinfo *ai_next;
};
enum {
	AI_PASSIVE           = 0x0001,
	AI_CANONNAME         = 0x0002,
	AI_NUMERICHOST       = 0x0004,
	AI_V4MAPPED          = 0x0008,
	AI_ALL               = 0x0010,
	AI_ADDRCONFIG        = 0x0020,
	AI_NUMERICSERV       = 0x0400,
	EAI_BADFLAGS         = -1,
	EAI_NONAME           = -2,
	EAI_AGAIN            = -3,
	EAI_FAIL             = -4,
	EAI_FAMILY           = -6,
	EAI_SOCKTYPE         = -7,
	EAI_SERVICE          = -8,
	EAI_MEMORY           = -10,
	EAI_SYSTEM           = -11,
	EAI_OVERFLOW         = -12,
	NI_MAXHOST           = 1025,
	NI_MAXSERV           = 32,
	NI_NUMERICHOST       = 1,
	NI_NUMERICSERV       = 2,
	NI_NOFQDN            = 4,
	NI_NAMEREQD          = 8,
	NI_DGRAM             = 16,
};
extern int getaddrinfo (__const char *__restrict __name,
   __const char *__restrict __service,
   __const struct addrinfo *__restrict __req,
   struct addrinfo **__restrict __pai);
extern void freeaddrinfo (struct addrinfo *__ai) __attribute__ ((__nothrow__));
extern __const char *gai_strerror (int __ecode) __attribute__ ((__nothrow__));
extern int getnameinfo (__const struct sockaddr *__restrict __sa,
   socklen_t __salen, char *__restrict __host,
   socklen_t __hostlen, char *__restrict __serv,
   socklen_t __servlen, unsigned int __flags);

// netinettcp.h
enum {
	TCP_NODELAY          = 1,
	TCP_MAXSEG           = 2,
	TCP_CORK             = 3,
	TCP_KEEPIDLE         = 4,
	TCP_KEEPINTVL        = 5,
	TCP_KEEPCNT          = 6,
	TCP_SYNCNT           = 7,
	TCP_LINGER2          = 8,
	TCP_DEFER_ACCEPT     = 9,
	TCP_WINDOW_CLAMP     = 10,
	TCP_INFO             = 11,
	TCP_QUICKACK         = 12,
	TCP_CONGESTION       = 13,
	TCP_MD5SIG           = 14,
};
struct tcphdr
  {
    u_int16_t source;
    u_int16_t dest;
    u_int32_t seq;
    u_int32_t ack_seq;
    u_int16_t res1:4;
    u_int16_t doff:4;
    u_int16_t fin:1;
    u_int16_t syn:1;
    u_int16_t rst:1;
    u_int16_t psh:1;
    u_int16_t ack:1;
    u_int16_t urg:1;
    u_int16_t res2:2;
    u_int16_t window;
    u_int16_t check;
    u_int16_t urg_ptr;
};
enum
{
  TCP_ESTABLISHED = 1,
  TCP_SYN_SENT,
  TCP_SYN_RECV,
  TCP_FIN_WAIT1,
  TCP_FIN_WAIT2,
  TCP_TIME_WAIT,
  TCP_CLOSE,
  TCP_CLOSE_WAIT,
  TCP_LAST_ACK,
  TCP_LISTEN,
  TCP_CLOSING
};
enum {
	TCPOPT_EOL           = 0,
	TCPOPT_NOP           = 1,
	TCPOPT_MAXSEG        = 2,
	TCPOLEN_MAXSEG       = 4,
	TCPOPT_WINDOW        = 3,
	TCPOLEN_WINDOW       = 3,
	TCPOPT_SACK_PERMITTED = 4,
	TCPOLEN_SACK_PERMITTED = 2,
	TCPOPT_SACK          = 5,
	TCPOPT_TIMESTAMP     = 8,
	TCPOLEN_TIMESTAMP    = 10,
	TCPOLEN_TSTAMP_APPA  = (TCPOLEN_TIMESTAMP+2),
	TCPOPT_TSTAMP_HDR    = (TCPOPT_NOP<<24|TCPOPT_NOP<<16|TCPOPT_TIMESTAMP<<8|TCPOLEN_TIMESTAMP),
	TCP_MSS              = 512,
	TCP_MAXWIN           = 65535,
	TCP_MAX_WINSHIFT     = 14,
	SOL_TCP              = 6,
	TCPI_OPT_TIMESTAMPS  = 1,
	TCPI_OPT_SACK        = 2,
	TCPI_OPT_WSCALE      = 4,
	TCPI_OPT_ECN         = 8,
};
enum tcp_ca_state
{
  TCP_CA_Open = 0,
  TCP_CA_Disorder = 1,
  TCP_CA_CWR = 2,
  TCP_CA_Recovery = 3,
  TCP_CA_Loss = 4
};
struct tcp_info
{
  u_int8_t tcpi_state;
  u_int8_t tcpi_ca_state;
  u_int8_t tcpi_retransmits;
  u_int8_t tcpi_probes;
  u_int8_t tcpi_backoff;
  u_int8_t tcpi_options;
  u_int8_t tcpi_snd_wscale : 4, tcpi_rcv_wscale : 4;
  u_int32_t tcpi_rto;
  u_int32_t tcpi_ato;
  u_int32_t tcpi_snd_mss;
  u_int32_t tcpi_rcv_mss;
  u_int32_t tcpi_unacked;
  u_int32_t tcpi_sacked;
  u_int32_t tcpi_lost;
  u_int32_t tcpi_retrans;
  u_int32_t tcpi_fackets;
  u_int32_t tcpi_last_data_sent;
  u_int32_t tcpi_last_ack_sent;
  u_int32_t tcpi_last_data_recv;
  u_int32_t tcpi_last_ack_recv;
  u_int32_t tcpi_pmtu;
  u_int32_t tcpi_rcv_ssthresh;
  u_int32_t tcpi_rtt;
  u_int32_t tcpi_rttvar;
  u_int32_t tcpi_snd_ssthresh;
  u_int32_t tcpi_snd_cwnd;
  u_int32_t tcpi_advmss;
  u_int32_t tcpi_reordering;
  u_int32_t tcpi_rcv_rtt;
  u_int32_t tcpi_rcv_space;
  u_int32_t tcpi_total_retrans;
};
enum {
	TCP_MD5SIG_MAXKEYLEN = 80,
};
struct tcp_md5sig
{
  struct sockaddr_storage tcpm_addr;
  u_int16_t __tcpm_pad1;
  u_int16_t tcpm_keylen;
  u_int32_t __tcpm_pad2;
  u_int8_t tcpm_key[80];
};

// bitspoll.h
enum {
	POLLIN               = 0x001,
	POLLPRI              = 0x002,
	POLLOUT              = 0x004,
	POLLERR              = 0x008,
	POLLHUP              = 0x010,
	POLLNVAL             = 0x020,
};

// syspoll.h
typedef unsigned long int nfds_t;
struct pollfd
  {
    int fd;
    short int events;
    short int revents;
  };
extern int poll (struct pollfd *__fds, nfds_t __nfds, int __timeout);

// bitssched.h
enum {
	SCHED_OTHER          = 0,
	SCHED_FIFO           = 1,
	SCHED_RR             = 2,
	CSIGNAL              = 0x000000ff,
	CLONE_VM             = 0x00000100,
	CLONE_FS             = 0x00000200,
	CLONE_FILES          = 0x00000400,
	CLONE_SIGHAND        = 0x00000800,
	CLONE_PTRACE         = 0x00002000,
	CLONE_VFORK          = 0x00004000,
	CLONE_PARENT         = 0x00008000,
	CLONE_THREAD         = 0x00010000,
	CLONE_NEWNS          = 0x00020000,
	CLONE_SYSVSEM        = 0x00040000,
	CLONE_SETTLS         = 0x00080000,
	CLONE_PARENT_SETTID  = 0x00100000,
	CLONE_CHILD_CLEARTID = 0x00200000,
	CLONE_DETACHED       = 0x00400000,
	CLONE_UNTRACED       = 0x00800000,
	CLONE_CHILD_SETTID   = 0x01000000,
	CLONE_NEWUTS         = 0x04000000,
	CLONE_NEWIPC         = 0x08000000,
	CLONE_NEWUSER        = 0x10000000,
	CLONE_NEWPID         = 0x20000000,
	CLONE_NEWNET         = 0x40000000,
	CLONE_IO             = 0x80000000,
};
struct sched_param
  {
    int __sched_priority;
  };
extern int clone (int (*__fn) (void *__arg), void *__child_stack,
    int __flags, void *__arg, ...) __attribute__ ((__nothrow__));
extern int unshare (int __flags) __attribute__ ((__nothrow__));
extern int sched_getcpu (void) __attribute__ ((__nothrow__));
struct __sched_param
  {
    int __sched_priority;
  };
typedef unsigned long int __cpu_mask;
typedef struct
{
  __cpu_mask __bits[1024  (8 * sizeof (__cpu_mask))];
} cpu_set_t;
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__));

// sched.h
enum {
	sched_priority       = __sched_priority,
};
extern int sched_setparam (__pid_t __pid, __const struct sched_param *__param)
     __attribute__ ((__nothrow__));
extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__));
extern int sched_setscheduler (__pid_t __pid, int __policy,
          __const struct sched_param *__param) __attribute__ ((__nothrow__));
extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__));
extern int sched_yield (void) __attribute__ ((__nothrow__));
extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__));
extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__));
extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__));

// bitssemaphore.h
enum {
	SEM_FAILED           = ((sem_t *) 0),
};
typedef union
{
  char __size[32];
  long int __align;
} sem_t;

// semaphore.h
extern int sem_init (sem_t *__sem, int __pshared, unsigned int __value)
     __attribute__ ((__nothrow__));
extern int sem_destroy (sem_t *__sem) __attribute__ ((__nothrow__));
extern sem_t *sem_open (__const char *__name, int __oflag, ...) __attribute__ ((__nothrow__));
extern int sem_close (sem_t *__sem) __attribute__ ((__nothrow__));
extern int sem_unlink (__const char *__name) __attribute__ ((__nothrow__));
extern int sem_wait (sem_t *__sem);
extern int sem_timedwait (sem_t *__restrict __sem,
     __const struct timespec *__restrict __abstime);
extern int sem_trywait (sem_t *__sem) __attribute__ ((__nothrow__));
extern int sem_post (sem_t *__sem) __attribute__ ((__nothrow__));
extern int sem_getvalue (sem_t *__restrict __sem, int *__restrict __sval)
     __attribute__ ((__nothrow__));

// bitssigset.h
typedef int __sig_atomic_t;
typedef struct
  {
    unsigned long int __val[(1024  (8 * sizeof (unsigned long int)))];
  } __sigset_t;
extern int __sigismember (__const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);

// signal.h
typedef __sig_atomic_t sig_atomic_t;
typedef __sigset_t sigset_t;
typedef void (*__sighandler_t) (int);
extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__));
extern __sighandler_t signal (int __sig, __sighandler_t __handler) 
                        ;
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__));
extern int raise (int __sig) __attribute__ ((__nothrow__));
extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__));
extern void psignal (int __sig, __const char *__s);
extern void psiginfo (__const siginfo_t *__pinfo, __const char *__s);
extern int __sigpause (int __sig_or_mask, int __is_sig);
enum {
	NSIG                 = _NSIG,
};
extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int sigismember (__const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int sigprocmask (int __how, __const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__));
extern int sigsuspend (__const sigset_t *__set) __attribute__ ((__nonnull__ (1)));
extern int sigaction (int __sig, __const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__));
extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int sigwait (__const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));
extern int sigwaitinfo (__const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));
extern int sigtimedwait (__const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    __const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));
extern int sigqueue (__pid_t __pid, int __sig, __const union sigval __val)
     __attribute__ ((__nothrow__));
extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__));
extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__));

// bitssignum.h
enum {
	SIG_ERR              = ((__sighandler_t) -1),
	SIG_DFL              = ((__sighandler_t) 0),
	SIG_IGN              = ((__sighandler_t) 1),
	SIGHUP               = 1,
	SIGINT               = 2,
	SIGQUIT              = 3,
	SIGILL               = 4,
	SIGTRAP              = 5,
	SIGABRT              = 6,
	SIGIOT               = 6,
	SIGBUS               = 7,
	SIGFPE               = 8,
	SIGKILL              = 9,
	SIGUSR1              = 10,
	SIGSEGV              = 11,
	SIGUSR2              = 12,
	SIGPIPE              = 13,
	SIGALRM              = 14,
	SIGTERM              = 15,
	SIGSTKFLT            = 16,
	SIGCLD               = SIGCHLD,
	SIGCHLD              = 17,
	SIGCONT              = 18,
	SIGSTOP              = 19,
	SIGTSTP              = 20,
	SIGTTIN              = 21,
	SIGTTOU              = 22,
	SIGURG               = 23,
	SIGXCPU              = 24,
	SIGXFSZ              = 25,
	SIGVTALRM            = 26,
	SIGPROF              = 27,
	SIGWINCH             = 28,
	SIGPOLL              = SIGIO,
	SIGIO                = 29,
	SIGPWR               = 30,
	SIGSYS               = 31,
	SIGUNUSED            = 31,
	SIGRTMIN             = (__libc_current_sigrtmin ()),
	SIGRTMAX             = (__libc_current_sigrtmax ()),
};

// bitssiginfo.h
typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
typedef struct siginfo
  {
    int si_signo;
    int si_errno;
    int si_code;
    union
      {
 int _pad[((128  sizeof (int)) - 4)];
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;
 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __clock_t si_utime;
     __clock_t si_stime;
   } _sigchld;
 struct
   {
     void *si_addr;
   } _sigfault;
 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;
      } _sifields;
  } siginfo_t;
enum {
	si_pid               = _sifields._kill.si_pid,
	si_uid               = _sifields._kill.si_uid,
	si_timerid           = _sifields._timer.si_tid,
	si_overrun           = _sifields._timer.si_overrun,
	si_status            = _sifields._sigchld.si_status,
	si_utime             = _sifields._sigchld.si_utime,
	si_stime             = _sifields._sigchld.si_stime,
	si_value             = _sifields._rt.si_sigval,
	si_int               = _sifields._rt.si_sigval.sival_int,
	si_ptr               = _sifields._rt.si_sigval.sival_ptr,
	si_addr              = _sifields._sigfault.si_addr,
	si_band              = _sifields._sigpoll.si_band,
	si_fd                = _sifields._sigpoll.si_fd,
};
enum
{
  SI_ASYNCNL = -60,
enum {
	SI_ASYNCNL           = SI_ASYNCNL,
};
  SI_TKILL = -6,
enum {
	SI_TKILL             = SI_TKILL,
};
  SI_SIGIO,
enum {
	SI_SIGIO             = SI_SIGIO,
};
  SI_ASYNCIO,
enum {
	SI_ASYNCIO           = SI_ASYNCIO,
};
  SI_MESGQ,
enum {
	SI_MESGQ             = SI_MESGQ,
};
  SI_TIMER,
enum {
	SI_TIMER             = SI_TIMER,
};
  SI_QUEUE,
enum {
	SI_QUEUE             = SI_QUEUE,
};
  SI_USER,
enum {
	SI_USER              = SI_USER,
};
  SI_KERNEL = 0x80
enum {
	SI_KERNEL            = SI_KERNEL,
};
};
enum
{
  ILL_ILLOPC = 1,
enum {
	ILL_ILLOPC           = ILL_ILLOPC,
};
  ILL_ILLOPN,
enum {
	ILL_ILLOPN           = ILL_ILLOPN,
};
  ILL_ILLADR,
enum {
	ILL_ILLADR           = ILL_ILLADR,
};
  ILL_ILLTRP,
enum {
	ILL_ILLTRP           = ILL_ILLTRP,
};
  ILL_PRVOPC,
enum {
	ILL_PRVOPC           = ILL_PRVOPC,
};
  ILL_PRVREG,
enum {
	ILL_PRVREG           = ILL_PRVREG,
};
  ILL_COPROC,
enum {
	ILL_COPROC           = ILL_COPROC,
};
  ILL_BADSTK
enum {
	ILL_BADSTK           = ILL_BADSTK,
};
};
enum
{
  FPE_INTDIV = 1,
enum {
	FPE_INTDIV           = FPE_INTDIV,
};
  FPE_INTOVF,
enum {
	FPE_INTOVF           = FPE_INTOVF,
};
  FPE_FLTDIV,
enum {
	FPE_FLTDIV           = FPE_FLTDIV,
};
  FPE_FLTOVF,
enum {
	FPE_FLTOVF           = FPE_FLTOVF,
};
  FPE_FLTUND,
enum {
	FPE_FLTUND           = FPE_FLTUND,
};
  FPE_FLTRES,
enum {
	FPE_FLTRES           = FPE_FLTRES,
};
  FPE_FLTINV,
enum {
	FPE_FLTINV           = FPE_FLTINV,
};
  FPE_FLTSUB
enum {
	FPE_FLTSUB           = FPE_FLTSUB,
};
};
enum
{
  SEGV_MAPERR = 1,
enum {
	SEGV_MAPERR          = SEGV_MAPERR,
};
  SEGV_ACCERR
enum {
	SEGV_ACCERR          = SEGV_ACCERR,
};
};
enum
{
  BUS_ADRALN = 1,
enum {
	BUS_ADRALN           = BUS_ADRALN,
};
  BUS_ADRERR,
enum {
	BUS_ADRERR           = BUS_ADRERR,
};
  BUS_OBJERR
enum {
	BUS_OBJERR           = BUS_OBJERR,
};
};
enum
{
  TRAP_BRKPT = 1,
enum {
	TRAP_BRKPT           = TRAP_BRKPT,
};
  TRAP_TRACE
enum {
	TRAP_TRACE           = TRAP_TRACE,
};
};
enum
{
  CLD_EXITED = 1,
enum {
	CLD_EXITED           = CLD_EXITED,
};
  CLD_KILLED,
enum {
	CLD_KILLED           = CLD_KILLED,
};
  CLD_DUMPED,
enum {
	CLD_DUMPED           = CLD_DUMPED,
};
  CLD_TRAPPED,
enum {
	CLD_TRAPPED          = CLD_TRAPPED,
};
  CLD_STOPPED,
enum {
	CLD_STOPPED          = CLD_STOPPED,
};
  CLD_CONTINUED
enum {
	CLD_CONTINUED        = CLD_CONTINUED,
};
};
enum
{
  POLL_IN = 1,
enum {
	POLL_IN              = POLL_IN,
};
  POLL_OUT,
enum {
	POLL_OUT             = POLL_OUT,
};
  POLL_MSG,
enum {
	POLL_MSG             = POLL_MSG,
};
  POLL_ERR,
enum {
	POLL_ERR             = POLL_ERR,
};
  POLL_PRI,
enum {
	POLL_PRI             = POLL_PRI,
};
  POLL_HUP
enum {
	POLL_HUP             = POLL_HUP,
};
};
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;
    union
      {
 int _pad[((64  sizeof (int)) - 4)];
 __pid_t _tid;
 struct
   {
     void (*_function) (sigval_t);
     void *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;
enum {
	sigev_notify_function = _sigev_un._sigev_thread._function,
	sigev_notify_attributes = _sigev_un._sigev_thread._attribute,
};
enum
{
  SIGEV_SIGNAL = 0,
enum {
	SIGEV_SIGNAL         = SIGEV_SIGNAL,
};
  SIGEV_NONE,
enum {
	SIGEV_NONE           = SIGEV_NONE,
};
  SIGEV_THREAD,
enum {
	SIGEV_THREAD         = SIGEV_THREAD,
};
  SIGEV_THREAD_ID = 4
enum {
	SIGEV_THREAD_ID      = SIGEV_THREAD_ID,
};
};

// bitssigaction.h
struct sigaction
  {
    union
      {
 __sighandler_t sa_handler;
 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;
enum {
	sa_handler           = __sigaction_handler.sa_handler,
	sa_sigaction         = __sigaction_handler.sa_sigaction,
};
    __sigset_t sa_mask;
    int sa_flags;
    void (*sa_restorer) (void);
  };
enum {
	SA_NOCLDSTOP         = 1,
	SA_NOCLDWAIT         = 2,
	SA_SIGINFO           = 4,
	SA_ONSTACK           = 0x08000000,
	SA_RESTART           = 0x10000000,
	SA_NODEFER           = 0x40000000,
	SA_RESETHAND         = 0x80000000,
	SA_INTERRUPT         = 0x20000000,
	SA_NOMASK            = SA_NODEFER,
	SA_ONESHOT           = SA_RESETHAND,
	SA_STACK             = SA_ONSTACK,
	SIG_BLOCK            = 0,
	SIG_UNBLOCK          = 1,
	SIG_SETMASK          = 2,
};

// bitssigthread.h
extern int pthread_sigmask (int __how,
       __const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__));
extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__));

// spawn.h
typedef struct
{
  short int __flags;
  pid_t __pgrp;
  sigset_t __sd;
  sigset_t __ss;
  struct sched_param __sp;
  int __policy;
  int __pad[16];
} posix_spawnattr_t;
typedef struct
{
  int __allocated;
  int __used;
  struct __spawn_action *__actions;
  int __pad[16];
} posix_spawn_file_actions_t;
enum {
	POSIX_SPAWN_RESETIDS = 0x01,
	POSIX_SPAWN_SETPGROUP = 0x02,
	POSIX_SPAWN_SETSIGDEF = 0x04,
	POSIX_SPAWN_SETSIGMASK = 0x08,
	POSIX_SPAWN_SETSCHEDPARAM = 0x10,
	POSIX_SPAWN_SETSCHEDULER = 0x20,
};
extern int posix_spawn (pid_t *__restrict __pid,
   __const char *__restrict __path,
   __const posix_spawn_file_actions_t *__restrict
   __file_actions,
   __const posix_spawnattr_t *__restrict __attrp,
   char *__const __argv[__restrict],
   char *__const __envp[__restrict]);
extern int posix_spawnp (pid_t *__pid, __const char *__file,
    __const posix_spawn_file_actions_t *__file_actions,
    __const posix_spawnattr_t *__attrp,
    char *__const __argv[], char *__const __envp[]);
extern int posix_spawnattr_init (posix_spawnattr_t *__attr) __attribute__ ((__nothrow__));
extern int posix_spawnattr_destroy (posix_spawnattr_t *__attr) __attribute__ ((__nothrow__));
extern int posix_spawnattr_getsigdefault (__const posix_spawnattr_t *
       __restrict __attr,
       sigset_t *__restrict __sigdefault)
     __attribute__ ((__nothrow__));
extern int posix_spawnattr_setsigdefault (posix_spawnattr_t *__restrict __attr,
       __const sigset_t *__restrict
       __sigdefault)
     __attribute__ ((__nothrow__));
extern int posix_spawnattr_getsigmask (__const posix_spawnattr_t *__restrict
           __attr,
           sigset_t *__restrict __sigmask) __attribute__ ((__nothrow__));
extern int posix_spawnattr_setsigmask (posix_spawnattr_t *__restrict __attr,
           __const sigset_t *__restrict __sigmask)
     __attribute__ ((__nothrow__));
extern int posix_spawnattr_getflags (__const posix_spawnattr_t *__restrict
         __attr,
         short int *__restrict __flags) __attribute__ ((__nothrow__));
extern int posix_spawnattr_setflags (posix_spawnattr_t *_attr,
         short int __flags) __attribute__ ((__nothrow__));
extern int posix_spawnattr_getpgroup (__const posix_spawnattr_t *__restrict
          __attr, pid_t *__restrict __pgroup)
     __attribute__ ((__nothrow__));
extern int posix_spawnattr_setpgroup (posix_spawnattr_t *__attr,
          pid_t __pgroup) __attribute__ ((__nothrow__));
extern int posix_spawnattr_getschedpolicy (__const posix_spawnattr_t *
        __restrict __attr,
        int *__restrict __schedpolicy)
     __attribute__ ((__nothrow__));
extern int posix_spawnattr_setschedpolicy (posix_spawnattr_t *__attr,
        int __schedpolicy) __attribute__ ((__nothrow__));
extern int posix_spawnattr_getschedparam (__const posix_spawnattr_t *
       __restrict __attr,
       struct sched_param *__restrict
       __schedparam) __attribute__ ((__nothrow__));
extern int posix_spawnattr_setschedparam (posix_spawnattr_t *__restrict __attr,
       const struct sched_param *
       __restrict __schedparam) __attribute__ ((__nothrow__));
extern int posix_spawn_file_actions_init (posix_spawn_file_actions_t *
       __file_actions) __attribute__ ((__nothrow__));
extern int posix_spawn_file_actions_destroy (posix_spawn_file_actions_t *
          __file_actions) __attribute__ ((__nothrow__));
extern int posix_spawn_file_actions_addopen (posix_spawn_file_actions_t *
          __restrict __file_actions,
          int __fd,
          __const char *__restrict __path,
          int __oflag, mode_t __mode)
     __attribute__ ((__nothrow__));
extern int posix_spawn_file_actions_addclose (posix_spawn_file_actions_t *
           __file_actions, int __fd)
     __attribute__ ((__nothrow__));
extern int posix_spawn_file_actions_adddup2 (posix_spawn_file_actions_t *
          __file_actions,
          int __fd, int __newfd) __attribute__ ((__nothrow__));

// wchar.h
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;

// _G_config.h
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
typedef int _G_int16_t __attribute__ ((__mode__ (__HI__)));
typedef int _G_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int _G_uint16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int _G_uint32_t __attribute__ ((__mode__ (__SI__)));

// usrlibgccx86_64-linux-gnu4.8includestdarg.h
typedef __builtin_va_list __gnuc_va_list;

// libio.h
enum {
	EOF                  = (-1),
};
struct _IO_jump_t; struct _IO_FILE;
typedef void _IO_lock_t;
struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;
  int _pos;
};
enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
struct _IO_FILE {
  int _flags;
  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2;
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;
  int _mode;
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
typedef struct _IO_FILE _IO_FILE;
struct _IO_FILE_plus;
extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);
typedef __ssize_t __io_write_fn (void *__cookie, __const char *__buf,
     size_t __n);
typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);
typedef int __io_close_fn (void *__cookie);
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__));
extern int _IO_peekc_locked (_IO_FILE *__fp);
extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__));
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);
extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);
extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__));

// bitsstdio_lim.h
enum {
	L_tmpnam             = 20,
	TMP_MAX              = 238328,
	FILENAME_MAX         = 4096,
	L_ctermid            = 9,
	FOPEN_MAX            = 16,
};

// bitsipctypes.h
typedef int __ipc_pid_t;

// bitsipc.h
enum {
	IPC_CREAT            = 01000,
	IPC_EXCL             = 02000,
	IPC_NOWAIT           = 04000,
	IPC_RMID             = 0,
	IPC_SET              = 1,
	IPC_STAT             = 2,
	IPC_PRIVATE          = ((__key_t) 0),
};
struct ipc_perm
  {
    __key_t __key;
    __uid_t uid;
    __gid_t gid;
    __uid_t cuid;
    __gid_t cgid;
    unsigned short int mode;
    unsigned short int __pad1;
    unsigned short int __seq;
    unsigned short int __pad2;
    unsigned long int __unused1;
    unsigned long int __unused2;
  };

// sysipc.h
extern key_t ftok (__const char *__pathname, int __proj_id) __attribute__ ((__nothrow__));

// bitsmman.h
enum {
	PROT_READ            = 0x1,
	PROT_WRITE           = 0x2,
	PROT_EXEC            = 0x4,
	PROT_NONE            = 0x0,
	PROT_GROWSDOWN       = 0x01000000,
	PROT_GROWSUP         = 0x02000000,
	MAP_SHARED           = 0x01,
	MAP_PRIVATE          = 0x02,
	MAP_TYPE             = 0x0f,
	MAP_FIXED            = 0x10,
	MAP_FILE             = 0,
	MAP_ANONYMOUS        = 0x20,
	MAP_ANON             = MAP_ANONYMOUS,
	MAP_32BIT            = 0x40,
	MAP_GROWSDOWN        = 0x00100,
	MAP_DENYWRITE        = 0x00800,
	MAP_EXECUTABLE       = 0x01000,
	MAP_LOCKED           = 0x02000,
	MAP_NORESERVE        = 0x04000,
	MAP_POPULATE         = 0x08000,
	MAP_NONBLOCK         = 0x10000,
	MAP_STACK            = 0x20000,
	MS_ASYNC             = 1,
	MS_SYNC              = 4,
	MS_INVALIDATE        = 2,
	MCL_CURRENT          = 1,
	MCL_FUTURE           = 2,
	POSIX_MADV_NORMAL    = 0,
	POSIX_MADV_RANDOM    = 1,
	POSIX_MADV_SEQUENTIAL = 2,
	POSIX_MADV_WILLNEED  = 3,
	POSIX_MADV_DONTNEED  = 4,
};

// sysmman.h
enum {
	MAP_FAILED           = ((void *) -1),
};
extern void *mmap (void *__addr, size_t __len, int __prot,
     int __flags, int __fd, __off_t __offset) __attribute__ ((__nothrow__));
extern int munmap (void *__addr, size_t __len) __attribute__ ((__nothrow__));
extern int mprotect (void *__addr, size_t __len, int __prot) __attribute__ ((__nothrow__));
extern int msync (void *__addr, size_t __len, int __flags);
extern int posix_madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__));
extern int mlock (__const void *__addr, size_t __len) __attribute__ ((__nothrow__));
extern int munlock (__const void *__addr, size_t __len) __attribute__ ((__nothrow__));
extern int mlockall (int __flags) __attribute__ ((__nothrow__));
extern int munlockall (void) __attribute__ ((__nothrow__));
extern int mincore (void *__start, size_t __len, unsigned char *__vec)
     __attribute__ ((__nothrow__));
extern int shm_open (__const char *__name, int __oflag, mode_t __mode);
extern int shm_unlink (__const char *__name);

// bitsmsq.h
enum {
	MSG_NOERROR          = 010000,
};
typedef unsigned long int msgqnum_t;
typedef unsigned long int msglen_t;
struct msqid_ds
{
  struct ipc_perm msg_perm;
  __time_t msg_stime;
  __time_t msg_rtime;
  __time_t msg_ctime;
  unsigned long int __msg_cbytes;
  msgqnum_t msg_qnum;
  msglen_t msg_qbytes;
  __pid_t msg_lspid;
  __pid_t msg_lrpid;
  unsigned long int __unused4;
  unsigned long int __unused5;
};
enum {
	msg_cbytes           = __msg_cbytes,
	MSG_STAT             = 11,
	MSG_INFO             = 12,
};
struct msginfo
  {
    int msgpool;
    int msgmap;
    int msgmax;
    int msgmnb;
    int msgmni;
    int msgssz;
    int msgtql;
    unsigned short int msgseg;
  };

// sysmsg.h
extern int msgctl (int __msqid, int __cmd, struct msqid_ds *__buf) __attribute__ ((__nothrow__));
extern int msgget (key_t __key, int __msgflg) __attribute__ ((__nothrow__));
extern ssize_t msgrcv (int __msqid, void *__msgp, size_t __msgsz,
         long int __msgtyp, int __msgflg);
extern int msgsnd (int __msqid, __const void *__msgp, size_t __msgsz,
     int __msgflg);

// bitsresource.h
enum __rlimit_resource
{
  RLIMIT_CPU = 0,
enum {
	RLIMIT_CPU           = RLIMIT_CPU,
};
  RLIMIT_FSIZE = 1,
enum {
	RLIMIT_FSIZE         = RLIMIT_FSIZE,
};
  RLIMIT_DATA = 2,
enum {
	RLIMIT_DATA          = RLIMIT_DATA,
};
  RLIMIT_STACK = 3,
enum {
	RLIMIT_STACK         = RLIMIT_STACK,
};
  RLIMIT_CORE = 4,
enum {
	RLIMIT_CORE          = RLIMIT_CORE,
};
  __RLIMIT_RSS = 5,
enum {
	RLIMIT_RSS           = __RLIMIT_RSS,
};
  RLIMIT_NOFILE = 7,
  __RLIMIT_OFILE = RLIMIT_NOFILE,
enum {
	RLIMIT_NOFILE        = RLIMIT_NOFILE,
	RLIMIT_OFILE         = __RLIMIT_OFILE,
};
  RLIMIT_AS = 9,
enum {
	RLIMIT_AS            = RLIMIT_AS,
};
  __RLIMIT_NPROC = 6,
enum {
	RLIMIT_NPROC         = __RLIMIT_NPROC,
};
  __RLIMIT_MEMLOCK = 8,
enum {
	RLIMIT_MEMLOCK       = __RLIMIT_MEMLOCK,
};
  __RLIMIT_LOCKS = 10,
enum {
	RLIMIT_LOCKS         = __RLIMIT_LOCKS,
};
  __RLIMIT_SIGPENDING = 11,
enum {
	RLIMIT_SIGPENDING    = __RLIMIT_SIGPENDING,
};
  __RLIMIT_MSGQUEUE = 12,
enum {
	RLIMIT_MSGQUEUE      = __RLIMIT_MSGQUEUE,
};
  __RLIMIT_NICE = 13,
enum {
	RLIMIT_NICE          = __RLIMIT_NICE,
};
  __RLIMIT_RTPRIO = 14,
enum {
	RLIMIT_RTPRIO        = __RLIMIT_RTPRIO,
};
  __RLIMIT_NLIMITS = 15,
  __RLIM_NLIMITS = __RLIMIT_NLIMITS
enum {
	RLIMIT_NLIMITS       = __RLIMIT_NLIMITS,
	RLIM_NLIMITS         = __RLIM_NLIMITS,
};
};
enum {
	RLIM_INFINITY        = ((unsigned long int)(~0UL)),
	RLIM_SAVED_MAX       = RLIM_INFINITY,
	RLIM_SAVED_CUR       = RLIM_INFINITY,
};
typedef __rlim_t rlim_t;
struct rlimit
  {
    rlim_t rlim_cur;
    rlim_t rlim_max;
  };
enum __rusage_who
{
  RUSAGE_SELF = 0,
enum {
	RUSAGE_SELF          = RUSAGE_SELF,
};
  RUSAGE_CHILDREN = -1
enum {
	RUSAGE_CHILDREN      = RUSAGE_CHILDREN,
};
};
struct rusage
  {
    struct timeval ru_utime;
    struct timeval ru_stime;
    long int ru_maxrss;
    long int ru_ixrss;
    long int ru_idrss;
    long int ru_isrss;
    long int ru_minflt;
    long int ru_majflt;
    long int ru_nswap;
    long int ru_inblock;
    long int ru_oublock;
    long int ru_msgsnd;
    long int ru_msgrcv;
    long int ru_nsignals;
    long int ru_nvcsw;
    long int ru_nivcsw;
  };
enum {
	PRIO_MIN             = -20,
	PRIO_MAX             = 20,
};
enum __priority_which
{
  PRIO_PROCESS = 0,
enum {
	PRIO_PROCESS         = PRIO_PROCESS,
};
  PRIO_PGRP = 1,
enum {
	PRIO_PGRP            = PRIO_PGRP,
};
  PRIO_USER = 2
enum {
	PRIO_USER            = PRIO_USER,
};
};

// bitstime.h
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
enum {
	CLOCKS_PER_SEC       = 1000000l,
	CLOCK_REALTIME       = 0,
	CLOCK_MONOTONIC      = 1,
	CLOCK_PROCESS_CPUTIME_ID = 2,
	CLOCK_THREAD_CPUTIME_ID = 3,
	TIMER_ABSTIME        = 1,
};

// sysresource.h
typedef int __rlimit_resource_t;
typedef int __rusage_who_t;
typedef int __priority_which_t;
extern int getrlimit (__rlimit_resource_t __resource,
        struct rlimit *__rlimits) __attribute__ ((__nothrow__));
extern int setrlimit (__rlimit_resource_t __resource,
        __const struct rlimit *__rlimits) __attribute__ ((__nothrow__));
extern int getrusage (__rusage_who_t __who, struct rusage *__usage) __attribute__ ((__nothrow__));
extern int getpriority (__priority_which_t __which, id_t __who) __attribute__ ((__nothrow__));
extern int setpriority (__priority_which_t __which, id_t __who, int __prio)
     __attribute__ ((__nothrow__));

// sysselect.h
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024  (8 * (int) sizeof (__fd_mask))];
  } fd_set;
enum {
	FD_SETSIZE           = __FD_SETSIZE,
};
typedef __fd_mask fd_mask;
enum {
	NFDBITS              = __NFDBITS,
};
#define FD_SET(fd,fdsetp) __FD_SET (fd, fdsetp)
#define FD_CLR(fd,fdsetp) __FD_CLR (fd, fdsetp)
#define FD_ISSET(fd,fdsetp) __FD_ISSET (fd, fdsetp)
#define FD_ZERO(fdsetp) __FD_ZERO (fdsetp)
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);

// bitssem.h
enum {
	SEM_UNDO             = 0x1000,
	GETPID               = 11,
	GETVAL               = 12,
	GETALL               = 13,
	GETNCNT              = 14,
	GETZCNT              = 15,
	SETVAL               = 16,
	SETALL               = 17,
};
struct semid_ds
{
  struct ipc_perm sem_perm;
  __time_t sem_otime;
  unsigned long int __unused1;
  __time_t sem_ctime;
  unsigned long int __unused2;
  unsigned long int sem_nsems;
  unsigned long int __unused3;
  unsigned long int __unused4;
};
enum {
	SEM_STAT             = 18,
	SEM_INFO             = 19,
};
struct seminfo
{
  int semmap;
  int semmni;
  int semmns;
  int semmnu;
  int semmsl;
  int semopm;
  int semume;
  int semusz;
  int semvmx;
  int semaem;
};

// syssem.h
struct sembuf
{
  unsigned short int sem_num;
  short int sem_op;
  short int sem_flg;
};
extern int semctl (int __semid, int __semnum, int __cmd, ...) __attribute__ ((__nothrow__));
extern int semget (key_t __key, int __nsems, int __semflg) __attribute__ ((__nothrow__));
extern int semop (int __semid, struct sembuf *__sops, size_t __nsops) __attribute__ ((__nothrow__));

// bitsstat.h
struct stat
  {
    __dev_t st_dev;
    __ino_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt_t st_blocks;
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
enum {
	st_atime             = st_atim.tv_sec,
	st_mtime             = st_mtim.tv_sec,
	st_ctime             = st_ctim.tv_sec,
};
    long int __unused[3];
  };

// sysstat.h
enum {
	S_IFMT               = __S_IFMT,
	S_IFDIR              = __S_IFDIR,
	S_IFCHR              = __S_IFCHR,
	S_IFBLK              = __S_IFBLK,
	S_IFREG              = __S_IFREG,
	S_IFIFO              = __S_IFIFO,
	S_IFLNK              = __S_IFLNK,
	S_IFSOCK             = __S_IFSOCK,
};
#define S_ISDIR(mode) __S_ISTYPE((mode), __S_IFDIR)
#define S_ISCHR(mode) __S_ISTYPE((mode), __S_IFCHR)
#define S_ISBLK(mode) __S_ISTYPE((mode), __S_IFBLK)
#define S_ISREG(mode) __S_ISTYPE((mode), __S_IFREG)
#define S_ISFIFO(mode) __S_ISTYPE((mode), __S_IFIFO)
#define S_ISLNK(mode) __S_ISTYPE((mode), __S_IFLNK)
#define S_ISSOCK(mode) __S_ISTYPE((mode), __S_IFSOCK)
#define S_TYPEISMQ(buf) __S_TYPEISMQ(buf)
#define S_TYPEISSEM(buf) __S_TYPEISSEM(buf)
#define S_TYPEISSHM(buf) __S_TYPEISSHM(buf)
enum {
	S_ISUID              = __S_ISUID,
	S_ISGID              = __S_ISGID,
	S_ISVTX              = __S_ISVTX,
	S_IRUSR              = __S_IREAD,
	S_IWUSR              = __S_IWRITE,
	S_IXUSR              = __S_IEXEC,
	S_IRWXU              = (__S_IREAD|__S_IWRITE|__S_IEXEC),
	S_IRGRP              = (S_IRUSR >> 3),
	S_IWGRP              = (S_IWUSR >> 3),
	S_IXGRP              = (S_IXUSR >> 3),
	S_IRWXG              = (S_IRWXU >> 3),
	S_IROTH              = (S_IRGRP >> 3),
	S_IWOTH              = (S_IWGRP >> 3),
	S_IXOTH              = (S_IXGRP >> 3),
	S_IRWXO              = (S_IRWXG >> 3),
};
extern int stat (__const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));
extern int lstat (__const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int chmod (__const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__));
extern int mkdir (__const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int mknod (__const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int mkfifo (__const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, __const char *__filename,
      struct stat *__stat_buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, __const char *__filename,
       struct stat *__stat_buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, __const char *__filename,
         struct stat *__stat_buf, int __flag)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4)));
extern int __xmknod (int __ver, __const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 4)));
extern int __xmknodat (int __ver, int __fd, __const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 5)));

// systimes.h
struct tms
  {
    clock_t tms_utime;
    clock_t tms_stime;
    clock_t tms_cutime;
    clock_t tms_cstime;
  };
extern clock_t times (struct tms *__buffer) __attribute__ ((__nothrow__));

// sysun.h
struct sockaddr_un
  {
    sa_family_t sun_family;
    char sun_path[108];
  };
#define SUN_LEN(ptr) ((size_t) (((struct sockaddr_un *) 0)->sun_path) + strlen ((ptr)->sun_path))

// string.h
extern void *memcpy (void *__restrict __dest,
       __const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, __const void *__src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memccpy (void *__restrict __dest, __const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int memcmp (__const void *__s1, __const void *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memchr (__const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncpy (char *__restrict __dest,
        __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strcat (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncat (char *__restrict __dest, __const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcmp (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncmp (__const char *__s1, __const char *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcoll (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strxfrm (char *__restrict __dest,
         __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));
extern char *strdup (__const char *__s)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strchr (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strrchr (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strcspn (__const char *__s, __const char *__reject)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strspn (__const char *__s, __const char *__accept)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strpbrk (__const char *__s, __const char *__accept)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strstr (__const char *__haystack, __const char *__needle)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strtok (char *__restrict __s, __const char *__restrict __delim)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));
extern char *__strtok_r (char *__restrict __s,
    __const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
extern char *strtok_r (char *__restrict __s, __const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
extern size_t strlen (__const char *__s)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__));
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) 
                        __attribute__ ((__nonnull__ (2)));
extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));

// bitswaitflags.h
enum {
	WNOHANG              = 1,
	WUNTRACED            = 2,
	WSTOPPED             = 2,
	WEXITED              = 4,
	WCONTINUED           = 8,
	WNOWAIT              = 0x01000000,
};

// syswait.h
#define WEXITSTATUS(status) __WEXITSTATUS (__WAIT_INT (status))
#define WTERMSIG(status) __WTERMSIG (__WAIT_INT (status))
#define WSTOPSIG(status) __WSTOPSIG (__WAIT_INT (status))
#define WIFEXITED(status) __WIFEXITED (__WAIT_INT (status))
#define WIFSIGNALED(status) __WIFSIGNALED (__WAIT_INT (status))
#define WIFSTOPPED(status) __WIFSTOPPED (__WAIT_INT (status))
#define WIFCONTINUED(status) __WIFCONTINUED (__WAIT_INT (status))
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
extern __pid_t wait (int * __stat_loc);
extern __pid_t waitpid (__pid_t __pid, int *__stat_loc, int __options);
extern int waitid (idtype_t __idtype, __id_t __id, siginfo_t *__infop,
     int __options);

// syssyslog.h
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
#define LOG_MAKEPRI(fac,pri) (((fac) << 3) | (pri))
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
	LOG_LOCAL0           = (16<<3),
	LOG_LOCAL1           = (17<<3),
	LOG_LOCAL2           = (18<<3),
	LOG_LOCAL3           = (19<<3),
	LOG_LOCAL4           = (20<<3),
	LOG_LOCAL5           = (21<<3),
	LOG_LOCAL6           = (22<<3),
	LOG_LOCAL7           = (23<<3),
	LOG_NFACILITIES      = 24,
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
extern void closelog (void);
extern void openlog (__const char *__ident, int __option, int __facility);
extern int setlogmask (int __mask) __attribute__ ((__nothrow__));
extern void syslog (int __pri, __const char *__fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));

// systime.h
typedef void *__restrict __timezone_ptr_t;
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
enum __itimer_which
  {
    ITIMER_REAL = 0,
enum {
	ITIMER_REAL          = ITIMER_REAL,
};
    ITIMER_VIRTUAL = 1,
enum {
	ITIMER_VIRTUAL       = ITIMER_VIRTUAL,
};
    ITIMER_PROF = 2
enum {
	ITIMER_PROF          = ITIMER_PROF,
};
  };
struct itimerval
  {
    struct timeval it_interval;
    struct timeval it_value;
  };
typedef int __itimer_which_t;
extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__));
extern int setitimer (__itimer_which_t __which,
        __const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__));
extern int utimes (__const char *__file, __const struct timeval __tvp[2])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));

// ulimit.h
enum
{
  UL_GETFSIZE = 1,
enum {
	UL_GETFSIZE          = UL_GETFSIZE,
};
  UL_SETFSIZE,
enum {
	UL_SETFSIZE          = UL_SETFSIZE,
};
  __UL_GETMAXBRK,
  __UL_GETOPENMAX
};
extern long int ulimit (int __cmd, ...) __attribute__ ((__nothrow__));

// unistd.h
enum {
	STDIN_FILENO         = 0,
	STDOUT_FILENO        = 1,
	STDERR_FILENO        = 2,
};
typedef __useconds_t useconds_t;
enum {
	R_OK                 = 4,
	W_OK                 = 2,
	X_OK                 = 1,
	F_OK                 = 0,
};
extern int access (__const char *__name, int __type) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__));
extern int close (int __fd);
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;
extern ssize_t write (int __fd, __const void *__buf, size_t __n) ;
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__)) ;
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__));
extern unsigned int sleep (unsigned int __seconds);
extern int pause (void);
extern int chown (__const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
extern int chdir (__const char *__path) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__)) ;
extern int dup (int __fd) __attribute__ ((__nothrow__)) ;
extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__));
extern char **__environ;
extern int execve (__const char *__path, char *__const __argv[],
     char *__const __envp[]) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int execv (__const char *__path, char *__const __argv[])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int execle (__const char *__path, __const char *__arg, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int execl (__const char *__path, __const char *__arg, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int execvp (__const char *__file, char *__const __argv[])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int execlp (__const char *__file, __const char *__arg, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int nice (int __inc) __attribute__ ((__nothrow__)) ;
extern void _exit (int __status) __attribute__ ((__noreturn__));
extern long int pathconf (__const char *__path, int __name)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__));
extern long int sysconf (int __name) __attribute__ ((__nothrow__));
extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__));
extern __pid_t getpid (void) __attribute__ ((__nothrow__));
extern __pid_t getppid (void) __attribute__ ((__nothrow__));
extern __pid_t getpgrp (void) __attribute__ ((__nothrow__));
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__));
extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__));
extern int setpgrp (void) __attribute__ ((__nothrow__));
extern __pid_t setsid (void) __attribute__ ((__nothrow__));
extern __uid_t getuid (void) __attribute__ ((__nothrow__));
extern __uid_t geteuid (void) __attribute__ ((__nothrow__));
extern __gid_t getgid (void) __attribute__ ((__nothrow__));
extern __gid_t getegid (void) __attribute__ ((__nothrow__));
extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__)) ;
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__));
extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__));
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__));
extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__));
extern __pid_t fork (void) __attribute__ ((__nothrow__));
extern char *ttyname (int __fd) __attribute__ ((__nothrow__));
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2))) ;
extern int isatty (int __fd) __attribute__ ((__nothrow__));
extern int link (__const char *__from, __const char *__to)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2))) ;
extern int symlink (__const char *__from, __const char *__to)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2))) ;
extern ssize_t readlink (__const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2))) ;
extern int unlink (__const char *__name) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int rmdir (__const char *__path) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__));
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__));
extern char *getlogin (void);
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));
extern int fsync (int __fd);
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__)) ;
extern int brk (void *__addr) __attribute__ ((__nothrow__)) ;
extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__));
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__));
extern int fdatasync (int __fildes);

// bitsconfname.h
enum
  {
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS
  };
enum
  {
    _SC_ARG_MAX,
    _SC_CHILD_MAX,
    _SC_CLK_TCK,
    _SC_NGROUPS_MAX,
    _SC_OPEN_MAX,
    _SC_STREAM_MAX,
    _SC_TZNAME_MAX,
    _SC_JOB_CONTROL,
    _SC_SAVED_IDS,
    _SC_REALTIME_SIGNALS,
    _SC_PRIORITY_SCHEDULING,
    _SC_TIMERS,
    _SC_ASYNCHRONOUS_IO,
    _SC_PRIORITIZED_IO,
    _SC_SYNCHRONIZED_IO,
    _SC_FSYNC,
    _SC_MAPPED_FILES,
    _SC_MEMLOCK,
    _SC_MEMLOCK_RANGE,
    _SC_MEMORY_PROTECTION,
    _SC_MESSAGE_PASSING,
    _SC_SEMAPHORES,
    _SC_SHARED_MEMORY_OBJECTS,
    _SC_AIO_LISTIO_MAX,
    _SC_AIO_MAX,
    _SC_AIO_PRIO_DELTA_MAX,
    _SC_DELAYTIMER_MAX,
    _SC_MQ_OPEN_MAX,
    _SC_MQ_PRIO_MAX,
    _SC_VERSION,
    _SC_PAGESIZE,
    _SC_RTSIG_MAX,
    _SC_SEM_NSEMS_MAX,
    _SC_SEM_VALUE_MAX,
    _SC_SIGQUEUE_MAX,
    _SC_TIMER_MAX,
    _SC_BC_BASE_MAX,
    _SC_BC_DIM_MAX,
    _SC_BC_SCALE_MAX,
    _SC_BC_STRING_MAX,
    _SC_COLL_WEIGHTS_MAX,
    _SC_EQUIV_CLASS_MAX,
    _SC_EXPR_NEST_MAX,
    _SC_LINE_MAX,
    _SC_RE_DUP_MAX,
    _SC_CHARCLASS_NAME_MAX,
    _SC_2_VERSION,
    _SC_2_C_BIND,
    _SC_2_C_DEV,
    _SC_2_FORT_DEV,
    _SC_2_FORT_RUN,
    _SC_2_SW_DEV,
    _SC_2_LOCALEDEF,
    _SC_PII,
    _SC_PII_XTI,
    _SC_PII_SOCKET,
    _SC_PII_INTERNET,
    _SC_PII_OSI,
    _SC_POLL,
    _SC_SELECT,
    _SC_UIO_MAXIOV,
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
    _SC_PII_INTERNET_STREAM,
    _SC_PII_INTERNET_DGRAM,
    _SC_PII_OSI_COTS,
    _SC_PII_OSI_CLTS,
    _SC_PII_OSI_M,
    _SC_T_IOV_MAX,
    _SC_THREADS,
    _SC_THREAD_SAFE_FUNCTIONS,
    _SC_GETGR_R_SIZE_MAX,
    _SC_GETPW_R_SIZE_MAX,
    _SC_LOGIN_NAME_MAX,
    _SC_TTY_NAME_MAX,
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
    _SC_THREAD_KEYS_MAX,
    _SC_THREAD_STACK_MIN,
    _SC_THREAD_THREADS_MAX,
    _SC_THREAD_ATTR_STACKADDR,
    _SC_THREAD_ATTR_STACKSIZE,
    _SC_THREAD_PRIORITY_SCHEDULING,
    _SC_THREAD_PRIO_INHERIT,
    _SC_THREAD_PRIO_PROTECT,
    _SC_THREAD_PROCESS_SHARED,
    _SC_NPROCESSORS_CONF,
    _SC_NPROCESSORS_ONLN,
    _SC_PHYS_PAGES,
    _SC_AVPHYS_PAGES,
    _SC_ATEXIT_MAX,
    _SC_PASS_MAX,
    _SC_XOPEN_VERSION,
    _SC_XOPEN_XCU_VERSION,
    _SC_XOPEN_UNIX,
    _SC_XOPEN_CRYPT,
    _SC_XOPEN_ENH_I18N,
    _SC_XOPEN_SHM,
    _SC_2_CHAR_TERM,
    _SC_2_C_VERSION,
    _SC_2_UPE,
    _SC_XOPEN_XPG2,
    _SC_XOPEN_XPG3,
    _SC_XOPEN_XPG4,
    _SC_CHAR_BIT,
    _SC_CHAR_MAX,
    _SC_CHAR_MIN,
    _SC_INT_MAX,
    _SC_INT_MIN,
    _SC_LONG_BIT,
    _SC_WORD_BIT,
    _SC_MB_LEN_MAX,
    _SC_NZERO,
    _SC_SSIZE_MAX,
    _SC_SCHAR_MAX,
    _SC_SCHAR_MIN,
    _SC_SHRT_MAX,
    _SC_SHRT_MIN,
    _SC_UCHAR_MAX,
    _SC_UINT_MAX,
    _SC_ULONG_MAX,
    _SC_USHRT_MAX,
    _SC_NL_ARGMAX,
    _SC_NL_LANGMAX,
    _SC_NL_MSGMAX,
    _SC_NL_NMAX,
    _SC_NL_SETMAX,
    _SC_NL_TEXTMAX,
    _SC_XBS5_ILP32_OFF32,
    _SC_XBS5_ILP32_OFFBIG,
    _SC_XBS5_LP64_OFF64,
    _SC_XBS5_LPBIG_OFFBIG,
    _SC_XOPEN_LEGACY,
    _SC_XOPEN_REALTIME,
    _SC_XOPEN_REALTIME_THREADS,
    _SC_ADVISORY_INFO,
    _SC_BARRIERS,
    _SC_BASE,
    _SC_C_LANG_SUPPORT,
    _SC_C_LANG_SUPPORT_R,
    _SC_CLOCK_SELECTION,
    _SC_CPUTIME,
    _SC_THREAD_CPUTIME,
    _SC_DEVICE_IO,
    _SC_DEVICE_SPECIFIC,
    _SC_DEVICE_SPECIFIC_R,
    _SC_FD_MGMT,
    _SC_FIFO,
    _SC_PIPE,
    _SC_FILE_ATTRIBUTES,
    _SC_FILE_LOCKING,
    _SC_FILE_SYSTEM,
    _SC_MONOTONIC_CLOCK,
    _SC_MULTI_PROCESS,
    _SC_SINGLE_PROCESS,
    _SC_NETWORKING,
    _SC_READER_WRITER_LOCKS,
    _SC_SPIN_LOCKS,
    _SC_REGEXP,
    _SC_REGEX_VERSION,
    _SC_SHELL,
    _SC_SIGNALS,
    _SC_SPAWN,
    _SC_SPORADIC_SERVER,
    _SC_THREAD_SPORADIC_SERVER,
    _SC_SYSTEM_DATABASE,
    _SC_SYSTEM_DATABASE_R,
    _SC_TIMEOUTS,
    _SC_TYPED_MEMORY_OBJECTS,
    _SC_USER_GROUPS,
    _SC_USER_GROUPS_R,
    _SC_2_PBS,
    _SC_2_PBS_ACCOUNTING,
    _SC_2_PBS_LOCATE,
    _SC_2_PBS_MESSAGE,
    _SC_2_PBS_TRACK,
    _SC_SYMLOOP_MAX,
    _SC_STREAMS,
    _SC_2_PBS_CHECKPOINT,
    _SC_V6_ILP32_OFF32,
    _SC_V6_ILP32_OFFBIG,
    _SC_V6_LP64_OFF64,
    _SC_V6_LPBIG_OFFBIG,
    _SC_HOST_NAME_MAX,
    _SC_TRACE,
    _SC_TRACE_EVENT_FILTER,
    _SC_TRACE_INHERIT,
    _SC_TRACE_LOG,
    _SC_LEVEL1_ICACHE_SIZE,
    _SC_LEVEL1_ICACHE_ASSOC,
    _SC_LEVEL1_ICACHE_LINESIZE,
    _SC_LEVEL1_DCACHE_SIZE,
    _SC_LEVEL1_DCACHE_ASSOC,
    _SC_LEVEL1_DCACHE_LINESIZE,
    _SC_LEVEL2_CACHE_SIZE,
    _SC_LEVEL2_CACHE_ASSOC,
    _SC_LEVEL2_CACHE_LINESIZE,
    _SC_LEVEL3_CACHE_SIZE,
    _SC_LEVEL3_CACHE_ASSOC,
    _SC_LEVEL3_CACHE_LINESIZE,
    _SC_LEVEL4_CACHE_SIZE,
    _SC_LEVEL4_CACHE_ASSOC,
    _SC_LEVEL4_CACHE_LINESIZE,
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
    _SC_RAW_SOCKETS,
    _SC_V7_ILP32_OFF32,
    _SC_V7_ILP32_OFFBIG,
    _SC_V7_LP64_OFF64,
    _SC_V7_LPBIG_OFFBIG,
    _SC_SS_REPL_MAX,
    _SC_TRACE_EVENT_NAME_MAX,
    _SC_TRACE_NAME_MAX,
    _SC_TRACE_SYS_MAX,
    _SC_TRACE_USER_EVENT_MAX,
    _SC_XOPEN_STREAMS,
    _SC_THREAD_ROBUST_PRIO_INHERIT,
    _SC_THREAD_ROBUST_PRIO_PROTECT
  };
enum
  {
    _CS_PATH,
    _CS_V6_WIDTH_RESTRICTED_ENVS,
    _CS_GNU_LIBC_VERSION,
    _CS_GNU_LIBPTHREAD_VERSION,
    _CS_V5_WIDTH_RESTRICTED_ENVS,
    _CS_V7_WIDTH_RESTRICTED_ENVS,
    _CS_LFS_CFLAGS = 1000,
    _CS_LFS_LDFLAGS,
    _CS_LFS_LIBS,
    _CS_LFS_LINTFLAGS,
    _CS_LFS64_CFLAGS,
    _CS_LFS64_LDFLAGS,
    _CS_LFS64_LIBS,
    _CS_LFS64_LINTFLAGS,
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
    _CS_XBS5_ILP32_OFF32_LIBS,
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LIBS,
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
    _CS_XBS5_LP64_OFF64_CFLAGS,
    _CS_XBS5_LP64_OFF64_LDFLAGS,
    _CS_XBS5_LP64_OFF64_LIBS,
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LIBS,
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LIBS,
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS
  };

// getopt.h
extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__));
  extern int getopt (int ___argc, char *const *___argv, const char *__shortopts) 
                    __attribute__ ((__nothrow__));

// utime.h
struct utimbuf
  {
    __time_t actime;
    __time_t modtime;
  };
extern int utime (__const char *__file,
    __const struct utimbuf *__file_times)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
]]
