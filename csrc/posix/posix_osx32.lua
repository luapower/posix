local ffi = require'ffi'
ffi.cdef[[

// <built-in>
enum {
	i386                 = 1,
	OBJC_NEW_PROPERTIES  = 1,
};

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
typedef int __darwin_ptrdiff_t;
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
 char __opaque[36];
};
struct _opaque_pthread_cond_t {
 long __sig;
 char __opaque[24];
};
struct _opaque_pthread_condattr_t {
 long __sig;
 char __opaque[4];
};
struct _opaque_pthread_mutex_t {
 long __sig;
 char __opaque[40];
};
struct _opaque_pthread_mutexattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_once_t {
 long __sig;
 char __opaque[4];
};
struct _opaque_pthread_rwlock_t {
 long __sig;
 char __opaque[124];
};
struct _opaque_pthread_rwlockattr_t {
 long __sig;
 char __opaque[12];
};
struct _opaque_pthread_t {
 long __sig;
 struct __darwin_pthread_handler_rec *__cleanup_stack;
 char __opaque[4088];
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
typedef struct __darwin_mcontext32 *mcontext_t;

// sys/_pthread/_pthread_attr_t.h
typedef __darwin_pthread_attr_t pthread_attr_t;

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
 struct __darwin_mcontext32 *uc_mcontext;
};
typedef struct __darwin_ucontext ucontext_t;

// sys/_types/_pid_t.h
typedef __darwin_pid_t pid_t;

// sys/_types/_sigset_t.h
typedef __darwin_sigset_t sigset_t;

// sys/_types/_size_t.h
typedef __darwin_size_t size_t;

// sys/_types/_uid_t.h
typedef __darwin_uid_t uid_t;

// sys/_types/_timespec.h
struct timespec
{
 __darwin_time_t tv_sec;
 long tv_nsec;
};

// sys/_types/_off_t.h
typedef __darwin_off_t off_t;

// sys/_types/_ssize_t.h
typedef __darwin_ssize_t ssize_t;

// sys/_types/_o_sync.h
enum {
	O_SYNC               = 0x0080,
};

// sys/_types/_o_dsync.h
enum {
	O_DSYNC              = 0x400000,
};

// sys/aio.h
struct aiocb {
 int aio_fildes;
 off_t aio_offset;
 volatile void *aio_buf;
 size_t aio_nbytes;
 int aio_reqprio;
 struct sigevent aio_sigevent;
 int aio_lio_opcode;
};
enum {
	AIO_ALLDONE          = 0x1,
	AIO_CANCELED         = 0x2,
	AIO_NOTCANCELED      = 0x4,
	LIO_NOP              = 0x0,
	LIO_READ             = 0x1,
	LIO_WRITE            = 0x2,
	LIO_NOWAIT           = 0x1,
	LIO_WAIT             = 0x2,
	AIO_LISTIO_MAX       = 16,
};
int aio_cancel( int fd,
     struct aiocb * aiocbp );
int aio_error( const struct aiocb * aiocbp );
int aio_fsync( int op,
       struct aiocb * aiocbp );
int aio_read( struct aiocb * aiocbp );
ssize_t aio_return( struct aiocb * aiocbp );
int aio_suspend( const struct aiocb *const aiocblist[],
      int nent,
       const struct timespec * timeoutp ) 
int aio_write( struct aiocb * aiocbp );
int lio_listio( int mode,
     struct aiocb *const aiocblist[],
      int nent,
      struct sigevent *sigp );

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
	INTPTR_MIN           = INT32_MIN,
	INTPTR_MAX           = INT32_MAX,
	UINTPTR_MAX          = UINT32_MAX,
	INTMAX_MIN           = INT64_MIN,
	INTMAX_MAX           = INT64_MAX,
	UINTMAX_MAX          = UINT64_MAX,
	PTRDIFF_MIN          = INT32_MIN,
	PTRDIFF_MAX          = INT32_MAX,
	SIZE_MAX             = UINT32_MAX,
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
#define INTMAX_C(v) (v ## LL)
#define UINTMAX_C(v) (v ## ULL)

// sys/_types/_intptr_t.h
typedef __darwin_intptr_t intptr_t;

// sys/_types/_uintptr_t.h
typedef unsigned long uintptr_t;

// _types/_intmax_t.h
typedef long long int intmax_t;

// _types/_uintmax_t.h
typedef long long unsigned int uintmax_t;

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
typedef int32_t register_t;
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

// sys/_types/_clock_t.h
typedef __darwin_clock_t clock_t;

// sys/_types/_time_t.h
typedef __darwin_time_t time_t;

// sys/_types/_useconds_t.h
typedef __darwin_useconds_t useconds_t;

// sys/_types/_suseconds_t.h
typedef __darwin_suseconds_t suseconds_t;

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

// assert.h
void __assert_rtn(const char *, const char *, int, const char *) __attribute__((noreturn));
#define assert(e) (__builtin_expect(!(e), 0) ? __assert_rtn(__func__, __FILE__, __LINE__, #e) : (void)0)

// complex.h
enum {
	complex              = _Complex,
	I                    = _Complex_I,
};
extern float _Complex cacosf(float _Complex);
extern double _Complex cacos(double _Complex);
extern long double _Complex cacosl(long double _Complex);
extern float _Complex casinf(float _Complex);
extern double _Complex casin(double _Complex);
extern long double _Complex casinl(long double _Complex);
extern float _Complex catanf(float _Complex);
extern double _Complex catan(double _Complex);
extern long double _Complex catanl(long double _Complex);
extern float _Complex ccosf(float _Complex);
extern double _Complex ccos(double _Complex);
extern long double _Complex ccosl(long double _Complex);
extern float _Complex csinf(float _Complex);
extern double _Complex csin(double _Complex);
extern long double _Complex csinl(long double _Complex);
extern float _Complex ctanf(float _Complex);
extern double _Complex ctan(double _Complex);
extern long double _Complex ctanl(long double _Complex);
extern float _Complex cacoshf(float _Complex);
extern double _Complex cacosh(double _Complex);
extern long double _Complex cacoshl(long double _Complex);
extern float _Complex casinhf(float _Complex);
extern double _Complex casinh(double _Complex);
extern long double _Complex casinhl(long double _Complex);
extern float _Complex catanhf(float _Complex);
extern double _Complex catanh(double _Complex);
extern long double _Complex catanhl(long double _Complex);
extern float _Complex ccoshf(float _Complex);
extern double _Complex ccosh(double _Complex);
extern long double _Complex ccoshl(long double _Complex);
extern float _Complex csinhf(float _Complex);
extern double _Complex csinh(double _Complex);
extern long double _Complex csinhl(long double _Complex);
extern float _Complex ctanhf(float _Complex);
extern double _Complex ctanh(double _Complex);
extern long double _Complex ctanhl(long double _Complex);
extern float _Complex cexpf(float _Complex);
extern double _Complex cexp(double _Complex);
extern long double _Complex cexpl(long double _Complex);
extern float _Complex clogf(float _Complex);
extern double _Complex clog(double _Complex);
extern long double _Complex clogl(long double _Complex);
extern float cabsf(float _Complex);
extern double cabs(double _Complex);
extern long double cabsl(long double _Complex);
extern float _Complex cpowf(float _Complex, float _Complex);
extern double _Complex cpow(double _Complex, double _Complex);
extern long double _Complex cpowl(long double _Complex, long double _Complex);
extern float _Complex csqrtf(float _Complex);
extern double _Complex csqrt(double _Complex);
extern long double _Complex csqrtl(long double _Complex);
extern float cargf(float _Complex);
extern double carg(double _Complex);
extern long double cargl(long double _Complex);
extern float cimagf(float _Complex);
extern double cimag(double _Complex);
extern long double cimagl(long double _Complex);
extern float _Complex conjf(float _Complex);
extern double _Complex conj(double _Complex);
extern long double _Complex conjl(long double _Complex);
extern float _Complex cprojf(float _Complex);
extern double _Complex cproj(double _Complex);
extern long double _Complex cprojl(long double _Complex);
extern float crealf(float _Complex);
extern double creal(double _Complex);
extern long double creall(long double _Complex);

// cpio.h
enum {
	C_ISSOCK             = 0140000,
	C_ISLNK              = 0120000,
	C_ISCTG              = 0110000,
	C_ISREG              = 0100000,
	C_ISBLK              = 0060000,
	C_ISDIR              = 0040000,
	C_ISCHR              = 0020000,
	C_ISFIFO             = 0010000,
	C_ISUID              = 0004000,
	C_ISGID              = 0002000,
	C_ISVTX              = 0001000,
	C_IRUSR              = 0000400,
	C_IWUSR              = 0000200,
	C_IXUSR              = 0000100,
	C_IRGRP              = 0000040,
	C_IWGRP              = 0000020,
	C_IXGRP              = 0000010,
	C_IROTH              = 0000004,
	C_IWOTH              = 0000002,
	C_IXOTH              = 0000001,
	MAGIC                = "070707",
};

// _types.h
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;
typedef unsigned long __darwin_wctype_t;

// runetype.h
typedef struct {
 __darwin_rune_t __min;
 __darwin_rune_t __max;
 __darwin_rune_t __map;
 __uint32_t *__types;
} _RuneEntry;
typedef struct {
 int __nranges;
 _RuneEntry *__ranges;
} _RuneRange;
typedef struct {
 char __name[14];
 __uint32_t __mask;
} _RuneCharClass;
typedef struct {
 char __magic[8];
 char __encoding[32];
 __darwin_rune_t (*__sgetrune)(const char *, __darwin_size_t, char const **);
 int (*__sputrune)(__darwin_rune_t, char *, __darwin_size_t, char **);
 __darwin_rune_t __invalid_rune;
 __uint32_t __runetype[(1 <<8 )];
 __darwin_rune_t __maplower[(1 <<8 )];
 __darwin_rune_t __mapupper[(1 <<8 )];
 _RuneRange __runetype_ext;
 _RuneRange __maplower_ext;
 _RuneRange __mapupper_ext;
 void *__variable;
 int __variable_len;
 int __ncharclasses;
 _RuneCharClass *__charclasses;
} _RuneLocale;
extern _RuneLocale _DefaultRuneLocale;
extern _RuneLocale *_CurrentRuneLocale;

// ctype.h
unsigned long ___runetype(__darwin_ct_rune_t);
__darwin_ct_rune_t ___tolower(__darwin_ct_rune_t);
__darwin_ct_rune_t ___toupper(__darwin_ct_rune_t);
inline int
isascii(int _c)
{
 return ((_c & ~0x7F) == 0);
}
int __maskrune(__darwin_ct_rune_t, unsigned long);
inline int
__istype(__darwin_ct_rune_t _c, unsigned long _f)
{
 return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
  : !!__maskrune(_c, _f));
}
inline __darwin_ct_rune_t
__isctype(__darwin_ct_rune_t _c, unsigned long _f)
{
 return (_c < 0 || _c >= (1 <<8 )) ? 0 :
  !!(_DefaultRuneLocale.__runetype[_c] & _f);
}
__darwin_ct_rune_t __toupper(__darwin_ct_rune_t);
__darwin_ct_rune_t __tolower(__darwin_ct_rune_t);
inline int
__wcwidth(__darwin_ct_rune_t _c)
{
 unsigned int _x;
 if (_c == 0)
  return (0);
 _x = (unsigned int)__maskrune(_c, 0xe0000000L|0x00040000L);
 if ((_x & 0xe0000000L) != 0)
  return ((_x & 0xe0000000L) >> 30);
 return ((_x & 0x00040000L) != 0 ? 1 : -1);
}
inline int
isalnum(int _c)
{
 return (__istype(_c, 0x00000100L|0x00000400L));
}
inline int
isalpha(int _c)
{
 return (__istype(_c, 0x00000100L));
}
inline int
isblank(int _c)
{
 return (__istype(_c, 0x00020000L));
}
inline int
iscntrl(int _c)
{
 return (__istype(_c, 0x00000200L));
}
inline int
isdigit(int _c)
{
 return (__isctype(_c, 0x00000400L));
}
inline int
isgraph(int _c)
{
 return (__istype(_c, 0x00000800L));
}
inline int
islower(int _c)
{
 return (__istype(_c, 0x00001000L));
}
inline int
isprint(int _c)
{
 return (__istype(_c, 0x00040000L));
}
inline int
ispunct(int _c)
{
 return (__istype(_c, 0x00002000L));
}
inline int
isspace(int _c)
{
 return (__istype(_c, 0x00004000L));
}
inline int
isupper(int _c)
{
 return (__istype(_c, 0x00008000L));
}
inline int
isxdigit(int _c)
{
 return (__isctype(_c, 0x00010000L));
}
inline int
toascii(int _c)
{
 return (_c & 0x7F);
}
inline int
tolower(int _c)
{
        return (__tolower(_c));
}
inline int
toupper(int _c)
{
        return (__toupper(_c));
}

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

// dlfcn.h
extern int dlclose(void * __handle);
extern char * dlerror(void);
extern void * dlopen(const char * __path, int __mode);
extern void * dlsym(void * __handle, const char * __symbol);
enum {
	RTLD_LAZY            = 0x1,
	RTLD_NOW             = 0x2,
	RTLD_LOCAL           = 0x4,
	RTLD_GLOBAL          = 0x8,
};

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

// fenv.h
typedef struct {
    unsigned short __control;
    unsigned short __status;
    unsigned int __mxcsr;
    char __reserved[8];
} fenv_t;
typedef unsigned short fexcept_t;
enum {
	FE_INEXACT           = 0x0020,
	FE_UNDERFLOW         = 0x0010,
	FE_OVERFLOW          = 0x0008,
	FE_DIVBYZERO         = 0x0004,
	FE_INVALID           = 0x0001,
	FE_DENORMALOPERAND   = 0x0002,
	FE_ALL_EXCEPT        = 0x003f,
	FE_TONEAREST         = 0x0000,
	FE_DOWNWARD          = 0x0400,
	FE_UPWARD            = 0x0800,
	FE_TOWARDZERO        = 0x0c00,
};
extern const fenv_t _FE_DFL_ENV;
enum {
	FE_DFL_ENV           = &_FE_DFL_ENV,
};
extern const fenv_t _FE_DFL_DISABLE_SSE_DENORMS_ENV;
enum {
	FE_DFL_DISABLE_SSE_DENORMS_ENV = &_FE_DFL_DISABLE_SSE_DENORMS_ENV,
};
extern int feclearexcept(int );
extern int fegetexceptflag(fexcept_t * , int );
extern int feraiseexcept(int );
extern int fesetexceptflag(const fexcept_t * , int );
extern int fetestexcept(int );
extern int fegetround(void);
extern int fesetround(int );
extern int fegetenv(fenv_t * );
extern int feholdexcept(fenv_t * );
extern int fesetenv(const fenv_t * );
extern int feupdateenv(const fenv_t * );

// float.h
enum {
	FLT_EVAL_METHOD      = __FLT_EVAL_METHOD__,
	FLT_ROUNDS           = (__builtin_flt_rounds()),
	FLT_RADIX            = __FLT_RADIX__,
	FLT_MANT_DIG         = __FLT_MANT_DIG__,
	DBL_MANT_DIG         = __DBL_MANT_DIG__,
	LDBL_MANT_DIG        = __LDBL_MANT_DIG__,
	DECIMAL_DIG          = __DECIMAL_DIG__,
	FLT_DIG              = __FLT_DIG__,
	DBL_DIG              = __DBL_DIG__,
	LDBL_DIG             = __LDBL_DIG__,
	FLT_MIN_EXP          = __FLT_MIN_EXP__,
	DBL_MIN_EXP          = __DBL_MIN_EXP__,
	LDBL_MIN_EXP         = __LDBL_MIN_EXP__,
	FLT_MIN_10_EXP       = __FLT_MIN_10_EXP__,
	DBL_MIN_10_EXP       = __DBL_MIN_10_EXP__,
	LDBL_MIN_10_EXP      = __LDBL_MIN_10_EXP__,
	FLT_MAX_EXP          = __FLT_MAX_EXP__,
	DBL_MAX_EXP          = __DBL_MAX_EXP__,
	LDBL_MAX_EXP         = __LDBL_MAX_EXP__,
	FLT_MAX_10_EXP       = __FLT_MAX_10_EXP__,
	DBL_MAX_10_EXP       = __DBL_MAX_10_EXP__,
	LDBL_MAX_10_EXP      = __LDBL_MAX_10_EXP__,
	FLT_MAX              = __FLT_MAX__,
	DBL_MAX              = __DBL_MAX__,
	LDBL_MAX             = __LDBL_MAX__,
	FLT_EPSILON          = __FLT_EPSILON__,
	DBL_EPSILON          = __DBL_EPSILON__,
	LDBL_EPSILON         = __LDBL_EPSILON__,
	FLT_MIN              = __FLT_MIN__,
	DBL_MIN              = __DBL_MIN__,
	LDBL_MIN             = __LDBL_MIN__,
	FLT_TRUE_MIN         = __FLT_DENORM_MIN__,
	DBL_TRUE_MIN         = __DBL_DENORM_MIN__,
	LDBL_TRUE_MIN        = __LDBL_DENORM_MIN__,
};

// fmtmsg.h
enum {
	MM_HARD              = 0x0001,
	MM_SOFT              = 0x0002,
	MM_FIRM              = 0x0004,
	MM_APPL              = 0x0010,
	MM_UTIL              = 0x0020,
	MM_OPSYS             = 0x0040,
	MM_PRINT             = 0x0100,
	MM_CONSOLE           = 0x0200,
	MM_RECOVER           = 0x1000,
	MM_NRECOV            = 0x2000,
	MM_NOSEV             = 0,
	MM_HALT              = 1,
	MM_ERROR             = 2,
	MM_WARNING           = 3,
	MM_INFO              = 4,
	MM_NULLLBL           = (char *)0,
	MM_NULLSEV           = 0,
	MM_NULLMC            = 0L,
	MM_NULLTXT           = (char *)0,
	MM_NULLACT           = (char *)0,
	MM_NULLTAG           = (char *)0,
	MM_OK                = 0,
	MM_NOMSG             = 1,
	MM_NOCON             = 2,
	MM_NOTOK             = 3,
};
int fmtmsg(long, const char *, int, const char *, const char *,
     const char *);

// fnmatch.h
enum {
	FNM_NOMATCH          = 1,
	FNM_NOESCAPE         = 0x01,
	FNM_PATHNAME         = 0x02,
	FNM_PERIOD           = 0x04,
	FNM_NOSYS            = (-1),
};
int fnmatch(const char *, const char *, int) 

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

// ftw.h
enum {
	FTW_F                = 0,
	FTW_D                = 1,
	FTW_DNR              = 2,
	FTW_DP               = 3,
	FTW_NS               = 4,
	FTW_SL               = 5,
	FTW_SLN              = 6,
	FTW_PHYS             = 0x01,
	FTW_MOUNT            = 0x02,
	FTW_DEPTH            = 0x04,
	FTW_CHDIR            = 0x08,
};
struct FTW {
 int base;
 int level;
};
int ftw(const char *, int (*)(const char *, const struct stat *, int), int)
 
int nftw(const char *, int (*)(const char *, const struct stat *, int,
     struct FTW *), int, int) 

// glob.h
typedef struct {
 size_t gl_pathc;
 int gl_matchc;
 size_t gl_offs;
 int gl_flags;
 char **gl_pathv;
 union {
  int (*gl_errfunc)(const char *, int);
  int (^gl_errblk)(const char *, int);
 };
 void (*gl_closedir)(void *);
 void *(*gl_readdir)(void *);
 void *(*gl_opendir)(const char *);
 int (*gl_lstat)(const char *, void *);
 int (*gl_stat)(const char *, void *);
} glob_t;
enum {
	GLOB_APPEND          = 0x0001,
	GLOB_DOOFFS          = 0x0002,
	GLOB_ERR             = 0x0004,
	GLOB_MARK            = 0x0008,
	GLOB_NOCHECK         = 0x0010,
	GLOB_NOSORT          = 0x0020,
	GLOB_NOESCAPE        = 0x2000,
	GLOB_NOSPACE         = (-1),
	GLOB_ABORTED         = (-2),
	GLOB_NOMATCH         = (-3),
	GLOB_NOSYS           = (-4),
	GLOB_ALTDIRFUNC      = 0x0040,
	GLOB_BRACE           = 0x0080,
	GLOB_MAGCHAR         = 0x0100,
	GLOB_NOMAGIC         = 0x0200,
	GLOB_QUOTE           = 0x0400,
	GLOB_TILDE           = 0x0800,
	GLOB_LIMIT           = 0x1000,
	GLOB_MAXPATH         = GLOB_LIMIT,
	GLOB_ABEND           = GLOB_ABORTED,
};
int glob(const char * restrict, int, int (*)(const char *, int),
      glob_t * restrict) 
int glob_b(const char * restrict, int, int (^)(const char *, int),
      glob_t * restrict) 
void globfree(glob_t *);

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

// iconv.h
extern int _libiconv_version;
typedef void* iconv_t;
iconv_t iconv_open (const char* , const char* );
size_t iconv (iconv_t ,
 char ** restrict , size_t * restrict ,
 char ** restrict , size_t * restrict );
int iconv_close (iconv_t );

// inttypes.h
enum {
	PRId8                = __PRI_8_LENGTH_MODIFIER__ "d",
	PRIi8                = __PRI_8_LENGTH_MODIFIER__ "i",
	PRIo8                = __PRI_8_LENGTH_MODIFIER__ "o",
	PRIu8                = __PRI_8_LENGTH_MODIFIER__ "u",
	PRIx8                = __PRI_8_LENGTH_MODIFIER__ "x",
	PRIX8                = __PRI_8_LENGTH_MODIFIER__ "X",
	PRId16               = "hd",
	PRIi16               = "hi",
	PRIo16               = "ho",
	PRIu16               = "hu",
	PRIx16               = "hx",
	PRIX16               = "hX",
	PRId32               = "d",
	PRIi32               = "i",
	PRIo32               = "o",
	PRIu32               = "u",
	PRIx32               = "x",
	PRIX32               = "X",
	PRId64               = __PRI_64_LENGTH_MODIFIER__ "d",
	PRIi64               = __PRI_64_LENGTH_MODIFIER__ "i",
	PRIo64               = __PRI_64_LENGTH_MODIFIER__ "o",
	PRIu64               = __PRI_64_LENGTH_MODIFIER__ "u",
	PRIx64               = __PRI_64_LENGTH_MODIFIER__ "x",
	PRIX64               = __PRI_64_LENGTH_MODIFIER__ "X",
	PRIdLEAST8           = PRId8,
	PRIiLEAST8           = PRIi8,
	PRIoLEAST8           = PRIo8,
	PRIuLEAST8           = PRIu8,
	PRIxLEAST8           = PRIx8,
	PRIXLEAST8           = PRIX8,
	PRIdLEAST16          = PRId16,
	PRIiLEAST16          = PRIi16,
	PRIoLEAST16          = PRIo16,
	PRIuLEAST16          = PRIu16,
	PRIxLEAST16          = PRIx16,
	PRIXLEAST16          = PRIX16,
	PRIdLEAST32          = PRId32,
	PRIiLEAST32          = PRIi32,
	PRIoLEAST32          = PRIo32,
	PRIuLEAST32          = PRIu32,
	PRIxLEAST32          = PRIx32,
	PRIXLEAST32          = PRIX32,
	PRIdLEAST64          = PRId64,
	PRIiLEAST64          = PRIi64,
	PRIoLEAST64          = PRIo64,
	PRIuLEAST64          = PRIu64,
	PRIxLEAST64          = PRIx64,
	PRIXLEAST64          = PRIX64,
	PRIdFAST8            = PRId8,
	PRIiFAST8            = PRIi8,
	PRIoFAST8            = PRIo8,
	PRIuFAST8            = PRIu8,
	PRIxFAST8            = PRIx8,
	PRIXFAST8            = PRIX8,
	PRIdFAST16           = PRId16,
	PRIiFAST16           = PRIi16,
	PRIoFAST16           = PRIo16,
	PRIuFAST16           = PRIu16,
	PRIxFAST16           = PRIx16,
	PRIXFAST16           = PRIX16,
	PRIdFAST32           = PRId32,
	PRIiFAST32           = PRIi32,
	PRIoFAST32           = PRIo32,
	PRIuFAST32           = PRIu32,
	PRIxFAST32           = PRIx32,
	PRIXFAST32           = PRIX32,
	PRIdFAST64           = PRId64,
	PRIiFAST64           = PRIi64,
	PRIoFAST64           = PRIo64,
	PRIuFAST64           = PRIu64,
	PRIxFAST64           = PRIx64,
	PRIXFAST64           = PRIX64,
	PRIdPTR              = "ld",
	PRIiPTR              = "li",
	PRIoPTR              = "lo",
	PRIuPTR              = "lu",
	PRIxPTR              = "lx",
	PRIXPTR              = "lX",
	PRIdMAX              = __PRI_MAX_LENGTH_MODIFIER__ "d",
	PRIiMAX              = __PRI_MAX_LENGTH_MODIFIER__ "i",
	PRIoMAX              = __PRI_MAX_LENGTH_MODIFIER__ "o",
	PRIuMAX              = __PRI_MAX_LENGTH_MODIFIER__ "u",
	PRIxMAX              = __PRI_MAX_LENGTH_MODIFIER__ "x",
	PRIXMAX              = __PRI_MAX_LENGTH_MODIFIER__ "X",
	SCNd8                = __PRI_8_LENGTH_MODIFIER__ "d",
	SCNi8                = __PRI_8_LENGTH_MODIFIER__ "i",
	SCNo8                = __PRI_8_LENGTH_MODIFIER__ "o",
	SCNu8                = __PRI_8_LENGTH_MODIFIER__ "u",
	SCNx8                = __PRI_8_LENGTH_MODIFIER__ "x",
	SCNd16               = "hd",
	SCNi16               = "hi",
	SCNo16               = "ho",
	SCNu16               = "hu",
	SCNx16               = "hx",
	SCNd32               = "d",
	SCNi32               = "i",
	SCNo32               = "o",
	SCNu32               = "u",
	SCNx32               = "x",
	SCNd64               = __SCN_64_LENGTH_MODIFIER__ "d",
	SCNi64               = __SCN_64_LENGTH_MODIFIER__ "i",
	SCNo64               = __SCN_64_LENGTH_MODIFIER__ "o",
	SCNu64               = __SCN_64_LENGTH_MODIFIER__ "u",
	SCNx64               = __SCN_64_LENGTH_MODIFIER__ "x",
	SCNdLEAST8           = SCNd8,
	SCNiLEAST8           = SCNi8,
	SCNoLEAST8           = SCNo8,
	SCNuLEAST8           = SCNu8,
	SCNxLEAST8           = SCNx8,
	SCNdLEAST16          = SCNd16,
	SCNiLEAST16          = SCNi16,
	SCNoLEAST16          = SCNo16,
	SCNuLEAST16          = SCNu16,
	SCNxLEAST16          = SCNx16,
	SCNdLEAST32          = SCNd32,
	SCNiLEAST32          = SCNi32,
	SCNoLEAST32          = SCNo32,
	SCNuLEAST32          = SCNu32,
	SCNxLEAST32          = SCNx32,
	SCNdLEAST64          = SCNd64,
	SCNiLEAST64          = SCNi64,
	SCNoLEAST64          = SCNo64,
	SCNuLEAST64          = SCNu64,
	SCNxLEAST64          = SCNx64,
	SCNdFAST8            = SCNd8,
	SCNiFAST8            = SCNi8,
	SCNoFAST8            = SCNo8,
	SCNuFAST8            = SCNu8,
	SCNxFAST8            = SCNx8,
	SCNdFAST16           = SCNd16,
	SCNiFAST16           = SCNi16,
	SCNoFAST16           = SCNo16,
	SCNuFAST16           = SCNu16,
	SCNxFAST16           = SCNx16,
	SCNdFAST32           = SCNd32,
	SCNiFAST32           = SCNi32,
	SCNoFAST32           = SCNo32,
	SCNuFAST32           = SCNu32,
	SCNxFAST32           = SCNx32,
	SCNdFAST64           = SCNd64,
	SCNiFAST64           = SCNi64,
	SCNoFAST64           = SCNo64,
	SCNuFAST64           = SCNu64,
	SCNxFAST64           = SCNx64,
	SCNdPTR              = "ld",
	SCNiPTR              = "li",
	SCNoPTR              = "lo",
	SCNuPTR              = "lu",
	SCNxPTR              = "lx",
	SCNdMAX              = __SCN_MAX_LENGTH_MODIFIER__ "d",
	SCNiMAX              = __SCN_MAX_LENGTH_MODIFIER__ "i",
	SCNoMAX              = __SCN_MAX_LENGTH_MODIFIER__ "o",
	SCNuMAX              = __SCN_MAX_LENGTH_MODIFIER__ "u",
	SCNxMAX              = __SCN_MAX_LENGTH_MODIFIER__ "x",
};
__attribute__((availability(macosx,introduced=10.4)))
extern intmax_t
imaxabs(intmax_t j);
typedef struct {
 intmax_t quot;
 intmax_t rem;
} imaxdiv_t;
__attribute__((availability(macosx,introduced=10.4)))
extern imaxdiv_t
imaxdiv(intmax_t __numer, intmax_t __denom);
__attribute__((availability(macosx,introduced=10.4)))
extern intmax_t
strtoimax(const char * restrict __nptr,
   char ** restrict __endptr,
   int __base);
__attribute__((availability(macosx,introduced=10.4)))
extern uintmax_t
strtoumax(const char * restrict __nptr,
   char ** restrict __endptr,
   int __base);
__attribute__((availability(macosx,introduced=10.4)))
extern intmax_t
wcstoimax(const wchar_t * restrict __nptr,
   wchar_t ** restrict __endptr,
   int __base);
__attribute__((availability(macosx,introduced=10.4)))
extern uintmax_t
wcstoumax(const wchar_t * restrict __nptr,
   wchar_t ** restrict __endptr,
   int __base);

// sys/_types/_wchar_t.h
typedef __darwin_wchar_t wchar_t;

// iso646.h
enum {
	and                  = &&,
	and_eq               = &=,
	bitand               = &,
	bitor                = |,
	compl                = ~,
	not                  = !,
	not_eq               = !=,
	or                   = ||,
	or_eq                = |=,
	xor                  = ^,
	xor_eq               = ^=,
};

// _types/_nl_item.h
typedef __darwin_nl_item nl_item;

// langinfo.h
enum {
	CODESET              = 0,
	D_T_FMT              = 1,
	D_FMT                = 2,
	T_FMT                = 3,
	T_FMT_AMPM           = 4,
	AM_STR               = 5,
	PM_STR               = 6,
	DAY_1                = 7,
	DAY_2                = 8,
	DAY_3                = 9,
	DAY_4                = 10,
	DAY_5                = 11,
	DAY_6                = 12,
	DAY_7                = 13,
	ABDAY_1              = 14,
	ABDAY_2              = 15,
	ABDAY_3              = 16,
	ABDAY_4              = 17,
	ABDAY_5              = 18,
	ABDAY_6              = 19,
	ABDAY_7              = 20,
	MON_1                = 21,
	MON_2                = 22,
	MON_3                = 23,
	MON_4                = 24,
	MON_5                = 25,
	MON_6                = 26,
	MON_7                = 27,
	MON_8                = 28,
	MON_9                = 29,
	MON_10               = 30,
	MON_11               = 31,
	MON_12               = 32,
	ABMON_1              = 33,
	ABMON_2              = 34,
	ABMON_3              = 35,
	ABMON_4              = 36,
	ABMON_5              = 37,
	ABMON_6              = 38,
	ABMON_7              = 39,
	ABMON_8              = 40,
	ABMON_9              = 41,
	ABMON_10             = 42,
	ABMON_11             = 43,
	ABMON_12             = 44,
	ERA                  = 45,
	ERA_D_FMT            = 46,
	ERA_D_T_FMT          = 47,
	ERA_T_FMT            = 48,
	ALT_DIGITS           = 49,
	RADIXCHAR            = 50,
	THOUSEP              = 51,
	YESEXPR              = 52,
	NOEXPR               = 53,
	CRNCYSTR             = 56,
};
char *nl_langinfo(nl_item);

// libgen.h
char *basename(char *);
char *dirname(char *);

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
	ULONG_MAX            = 0xffffffffUL,
	LONG_MAX             = 2147483647L,
	LONG_MIN             = (-2147483647L-1),
	ULLONG_MAX           = 0xffffffffffffffffULL,
	LLONG_MAX            = 0x7fffffffffffffffLL,
	LLONG_MIN            = (-0x7fffffffffffffffLL-1),
	LONG_BIT             = 32,
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

// _locale.h
struct lconv {
 char *decimal_point;
 char *thousands_sep;
 char *grouping;
 char *int_curr_symbol;
 char *currency_symbol;
 char *mon_decimal_point;
 char *mon_thousands_sep;
 char *mon_grouping;
 char *positive_sign;
 char *negative_sign;
 char int_frac_digits;
 char frac_digits;
 char p_cs_precedes;
 char p_sep_by_space;
 char n_cs_precedes;
 char n_sep_by_space;
 char p_sign_posn;
 char n_sign_posn;
 char int_p_cs_precedes;
 char int_n_cs_precedes;
 char int_p_sep_by_space;
 char int_n_sep_by_space;
 char int_p_sign_posn;
 char int_n_sign_posn;
};
struct lconv *localeconv(void);

// sys/_types/_null.h
enum {
	NULL                 = __DARWIN_NULL,
};

// locale.h
enum {
	LC_ALL               = 0,
	LC_COLLATE           = 1,
	LC_CTYPE             = 2,
	LC_MONETARY          = 3,
	LC_NUMERIC           = 4,
	LC_TIME              = 5,
	LC_MESSAGES          = 6,
};
char *setlocale(int, const char *);

// math.h
 typedef float float_t;
    typedef double double_t;
enum {
	HUGE_VAL             = __builtin_huge_val(),
	HUGE_VALF            = __builtin_huge_valf(),
	HUGE_VALL            = __builtin_huge_vall(),
	NAN                  = __builtin_nanf("0x7fc00000"),
	INFINITY             = HUGE_VALF,
	FP_NAN               = 1,
	FP_INFINITE          = 2,
	FP_ZERO              = 3,
	FP_NORMAL            = 4,
	FP_SUBNORMAL         = 5,
	FP_SUPERNORMAL       = 6,
	FP_ILOGB0            = (-2147483647 - 1),
	FP_ILOGBNAN          = (-2147483647 - 1),
	MATH_ERRNO           = 1,
	MATH_ERREXCEPT       = 2,
	math_errhandling     = (__math_errhandling()),
};
extern int __math_errhandling(void);
#define fpclassify(x) ( sizeof(x) == sizeof(float) ? __fpclassifyf((float)(x)) : sizeof(x) == sizeof(double) ? __fpclassifyd((double)(x)) : __fpclassifyl((long double)(x)))
extern int __fpclassifyf(float);
extern int __fpclassifyd(double);
extern int __fpclassifyl(long double);
#define isnormal(x) ( sizeof(x) == sizeof(float) ? __inline_isnormalf((float)(x)) : sizeof(x) == sizeof(double) ? __inline_isnormald((double)(x)) : __inline_isnormall((long double)(x)))
#define isfinite(x) ( sizeof(x) == sizeof(float) ? __inline_isfinitef((float)(x)) : sizeof(x) == sizeof(double) ? __inline_isfinited((double)(x)) : __inline_isfinitel((long double)(x)))
#define isinf(x) ( sizeof(x) == sizeof(float) ? __inline_isinff((float)(x)) : sizeof(x) == sizeof(double) ? __inline_isinfd((double)(x)) : __inline_isinfl((long double)(x)))
#define isnan(x) ( sizeof(x) == sizeof(float) ? __inline_isnanf((float)(x)) : sizeof(x) == sizeof(double) ? __inline_isnand((double)(x)) : __inline_isnanl((long double)(x)))
#define signbit(x) ( sizeof(x) == sizeof(float) ? __inline_signbitf((float)(x)) : sizeof(x) == sizeof(double) ? __inline_signbitd((double)(x)) : __inline_signbitl((long double)(x)))
inline __attribute__ ((__always_inline__)) int __inline_isfinitef(float);
inline __attribute__ ((__always_inline__)) int __inline_isfinited(double);
inline __attribute__ ((__always_inline__)) int __inline_isfinitel(long double);
inline __attribute__ ((__always_inline__)) int __inline_isinff(float);
inline __attribute__ ((__always_inline__)) int __inline_isinfd(double);
inline __attribute__ ((__always_inline__)) int __inline_isinfl(long double);
inline __attribute__ ((__always_inline__)) int __inline_isnanf(float);
inline __attribute__ ((__always_inline__)) int __inline_isnand(double);
inline __attribute__ ((__always_inline__)) int __inline_isnanl(long double);
inline __attribute__ ((__always_inline__)) int __inline_isnormalf(float);
inline __attribute__ ((__always_inline__)) int __inline_isnormald(double);
inline __attribute__ ((__always_inline__)) int __inline_isnormall(long double);
inline __attribute__ ((__always_inline__)) int __inline_signbitf(float);
inline __attribute__ ((__always_inline__)) int __inline_signbitd(double);
inline __attribute__ ((__always_inline__)) int __inline_signbitl(long double);
inline __attribute__ ((__always_inline__)) int __inline_isfinitef(float __x) {
    return __x == __x && __builtin_fabsf(__x) != __builtin_inff();
}
inline __attribute__ ((__always_inline__)) int __inline_isfinited(double __x) {
    return __x == __x && __builtin_fabs(__x) != __builtin_inf();
}
inline __attribute__ ((__always_inline__)) int __inline_isfinitel(long double __x) {
    return __x == __x && __builtin_fabsl(__x) != __builtin_infl();
}
inline __attribute__ ((__always_inline__)) int __inline_isinff(float __x) {
    return __builtin_fabsf(__x) == __builtin_inff();
}
inline __attribute__ ((__always_inline__)) int __inline_isinfd(double __x) {
    return __builtin_fabs(__x) == __builtin_inf();
}
inline __attribute__ ((__always_inline__)) int __inline_isinfl(long double __x) {
    return __builtin_fabsl(__x) == __builtin_infl();
}
inline __attribute__ ((__always_inline__)) int __inline_isnanf(float __x) {
    return __x != __x;
}
inline __attribute__ ((__always_inline__)) int __inline_isnand(double __x) {
    return __x != __x;
}
inline __attribute__ ((__always_inline__)) int __inline_isnanl(long double __x) {
    return __x != __x;
}
inline __attribute__ ((__always_inline__)) int __inline_signbitf(float __x) {
    union { float __f; unsigned int __u; } __u;
    __u.__f = __x;
    return (int)(__u.__u >> 31);
}
inline __attribute__ ((__always_inline__)) int __inline_signbitd(double __x) {
    union { double __f; unsigned long long __u; } __u;
    __u.__f = __x;
    return (int)(__u.__u >> 63);
}
inline __attribute__ ((__always_inline__)) int __inline_signbitl(long double __x) {
    union {
        long double __ld;
        struct{ unsigned long long __m; unsigned short __sexp; } __p;
    } __u;
    __u.__ld = __x;
    return (int)(__u.__p.__sexp >> 15);
}
inline __attribute__ ((__always_inline__)) int __inline_isnormalf(float __x) {
    return __inline_isfinitef(__x) && __builtin_fabsf(__x) >= 1.17549435e-38F;
}
inline __attribute__ ((__always_inline__)) int __inline_isnormald(double __x) {
    return __inline_isfinited(__x) && __builtin_fabs(__x) >= 2.2250738585072014e-308;
}
inline __attribute__ ((__always_inline__)) int __inline_isnormall(long double __x) {
    return __inline_isfinitel(__x) && __builtin_fabsl(__x) >= 3.36210314311209350626e-4932L;
}
extern float acosf(float);
extern double acos(double);
extern long double acosl(long double);
extern float asinf(float);
extern double asin(double);
extern long double asinl(long double);
extern float atanf(float);
extern double atan(double);
extern long double atanl(long double);
extern float atan2f(float, float);
extern double atan2(double, double);
extern long double atan2l(long double, long double);
extern float cosf(float);
extern double cos(double);
extern long double cosl(long double);
extern float sinf(float);
extern double sin(double);
extern long double sinl(long double);
extern float tanf(float);
extern double tan(double);
extern long double tanl(long double);
extern float acoshf(float);
extern double acosh(double);
extern long double acoshl(long double);
extern float asinhf(float);
extern double asinh(double);
extern long double asinhl(long double);
extern float atanhf(float);
extern double atanh(double);
extern long double atanhl(long double);
extern float coshf(float);
extern double cosh(double);
extern long double coshl(long double);
extern float sinhf(float);
extern double sinh(double);
extern long double sinhl(long double);
extern float tanhf(float);
extern double tanh(double);
extern long double tanhl(long double);
extern float expf(float);
extern double exp(double);
extern long double expl(long double);
extern float exp2f(float);
extern double exp2(double);
extern long double exp2l(long double);
extern float expm1f(float);
extern double expm1(double);
extern long double expm1l(long double);
extern float logf(float);
extern double log(double);
extern long double logl(long double);
extern float log10f(float);
extern double log10(double);
extern long double log10l(long double);
extern float log2f(float);
extern double log2(double);
extern long double log2l(long double);
extern float log1pf(float);
extern double log1p(double);
extern long double log1pl(long double);
extern float logbf(float);
extern double logb(double);
extern long double logbl(long double);
extern float modff(float, float *);
extern double modf(double, double *);
extern long double modfl(long double, long double *);
extern float ldexpf(float, int);
extern double ldexp(double, int);
extern long double ldexpl(long double, int);
extern float frexpf(float, int *);
extern double frexp(double, int *);
extern long double frexpl(long double, int *);
extern int ilogbf(float);
extern int ilogb(double);
extern int ilogbl(long double);
extern float scalbnf(float, int);
extern double scalbn(double, int);
extern long double scalbnl(long double, int);
extern float scalblnf(float, long int);
extern double scalbln(double, long int);
extern long double scalblnl(long double, long int);
extern float fabsf(float);
extern double fabs(double);
extern long double fabsl(long double);
extern float cbrtf(float);
extern double cbrt(double);
extern long double cbrtl(long double);
extern float hypotf(float, float);
extern double hypot(double, double);
extern long double hypotl(long double, long double);
extern float powf(float, float);
extern double pow(double, double);
extern long double powl(long double, long double);
extern float sqrtf(float);
extern double sqrt(double);
extern long double sqrtl(long double);
extern float erff(float);
extern double erf(double);
extern long double erfl(long double);
extern float erfcf(float);
extern double erfc(double);
extern long double erfcl(long double);
extern float lgammaf(float);
extern double lgamma(double);
extern long double lgammal(long double);
extern float tgammaf(float);
extern double tgamma(double);
extern long double tgammal(long double);
extern float ceilf(float);
extern double ceil(double);
extern long double ceill(long double);
extern float floorf(float);
extern double floor(double);
extern long double floorl(long double);
extern float nearbyintf(float);
extern double nearbyint(double);
extern long double nearbyintl(long double);
extern float rintf(float);
extern double rint(double);
extern long double rintl(long double);
extern long int lrintf(float);
extern long int lrint(double);
extern long int lrintl(long double);
extern float roundf(float);
extern double round(double);
extern long double roundl(long double);
extern long int lroundf(float);
extern long int lround(double);
extern long int lroundl(long double);
extern long long int llrintf(float);
extern long long int llrint(double);
extern long long int llrintl(long double);
extern long long int llroundf(float);
extern long long int llround(double);
extern long long int llroundl(long double);
extern float truncf(float);
extern double trunc(double);
extern long double truncl(long double);
extern float fmodf(float, float);
extern double fmod(double, double);
extern long double fmodl(long double, long double);
extern float remainderf(float, float);
extern double remainder(double, double);
extern long double remainderl(long double, long double);
extern float remquof(float, float, int *);
extern double remquo(double, double, int *);
extern long double remquol(long double, long double, int *);
extern float copysignf(float, float);
extern double copysign(double, double);
extern long double copysignl(long double, long double);
extern float nanf(const char *);
extern double nan(const char *);
extern long double nanl(const char *);
extern float nextafterf(float, float);
extern double nextafter(double, double);
extern long double nextafterl(long double, long double);
extern double nexttoward(double, long double);
extern float nexttowardf(float, long double);
extern long double nexttowardl(long double, long double);
extern float fdimf(float, float);
extern double fdim(double, double);
extern long double fdiml(long double, long double);
extern float fmaxf(float, float);
extern double fmax(double, double);
extern long double fmaxl(long double, long double);
extern float fminf(float, float);
extern double fmin(double, double);
extern long double fminl(long double, long double);
extern float fmaf(float, float, float);
extern double fma(double, double, double);
extern long double fmal(long double, long double, long double);
#define isgreater(x,y) __builtin_isgreater((x),(y))
#define isgreaterequal(x,y) __builtin_isgreaterequal((x),(y))
#define isless(x,y) __builtin_isless((x),(y))
#define islessequal(x,y) __builtin_islessequal((x),(y))
#define islessgreater(x,y) __builtin_islessgreater((x),(y))
#define isunordered(x,y) __builtin_isunordered((x),(y))
extern float __inff(void) __attribute__((availability(macosx,introduced=10.0,deprecated=10.9)));
extern double __inf(void) __attribute__((availability(macosx,introduced=10.0,deprecated=10.9)));
extern long double __infl(void) __attribute__((availability(macosx,introduced=10.0,deprecated=10.9)));
extern float __nan(void) __attribute__((availability(macosx,introduced=10.0)));
extern float __exp10f(float) __attribute__((availability(macosx,introduced=10.9)));
extern double __exp10(double) __attribute__((availability(macosx,introduced=10.9)));
inline __attribute__ ((__always_inline__)) void __sincosf(float __x, float *__sinp, float *__cosp) __attribute__((availability(macosx,introduced=10.9)));
inline __attribute__ ((__always_inline__)) void __sincos(double __x, double *__sinp, double *__cosp) __attribute__((availability(macosx,introduced=10.9)));
extern float __cospif(float) __attribute__((availability(macosx,introduced=10.9)));
extern double __cospi(double) __attribute__((availability(macosx,introduced=10.9)));
extern float __sinpif(float) __attribute__((availability(macosx,introduced=10.9)));
extern double __sinpi(double) __attribute__((availability(macosx,introduced=10.9)));
extern float __tanpif(float) __attribute__((availability(macosx,introduced=10.9)));
extern double __tanpi(double) __attribute__((availability(macosx,introduced=10.9)));
inline __attribute__ ((__always_inline__)) void __sincospif(float __x, float *__sinp, float *__cosp) __attribute__((availability(macosx,introduced=10.9)));
inline __attribute__ ((__always_inline__)) void __sincospi(double __x, double *__sinp, double *__cosp) __attribute__((availability(macosx,introduced=10.9)));
struct __float2 { float __sinval; float __cosval; };
struct __double2 { double __sinval; double __cosval; };
extern struct __float2 __sincosf_stret(float);
extern struct __double2 __sincos_stret(double);
extern struct __float2 __sincospif_stret(float);
extern struct __double2 __sincospi_stret(double);
inline __attribute__ ((__always_inline__)) void __sincosf(float __x, float *__sinp, float *__cosp) {
    const struct __float2 __stret = __sincosf_stret(__x);
    *__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
}
inline __attribute__ ((__always_inline__)) void __sincos(double __x, double *__sinp, double *__cosp) {
    const struct __double2 __stret = __sincos_stret(__x);
    *__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
}
inline __attribute__ ((__always_inline__)) void __sincospif(float __x, float *__sinp, float *__cosp) {
    const struct __float2 __stret = __sincospif_stret(__x);
    *__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
}
inline __attribute__ ((__always_inline__)) void __sincospi(double __x, double *__sinp, double *__cosp) {
    const struct __double2 __stret = __sincospi_stret(__x);
    *__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
}
extern double j0(double) __attribute__((availability(macosx,introduced=10.0)));
extern double j1(double) __attribute__((availability(macosx,introduced=10.0)));
extern double jn(int, double) __attribute__((availability(macosx,introduced=10.0)));
extern double y0(double) __attribute__((availability(macosx,introduced=10.0)));
extern double y1(double) __attribute__((availability(macosx,introduced=10.0)));
extern double yn(int, double) __attribute__((availability(macosx,introduced=10.0)));
extern double scalb(double, double);
extern int signgam;
enum {
	M_E                  = 2.71828182845904523536028747135266250,
	M_LOG2E              = 1.44269504088896340735992468100189214,
	M_LOG10E             = 0.434294481903251827651128918916605082,
	M_LN2                = 0.693147180559945309417232121458176568,
	M_LN10               = 2.30258509299404568401799145468436421,
	M_PI                 = 3.14159265358979323846264338327950288,
	M_PI_2               = 1.57079632679489661923132169163975144,
	M_PI_4               = 0.785398163397448309615660845819875721,
	M_1_PI               = 0.318309886183790671537767526745028724,
	M_2_PI               = 0.636619772367581343075535053490057448,
	M_2_SQRTPI           = 1.12837916709551257389615890312154517,
	M_SQRT2              = 1.41421356237309504880168872420969808,
	M_SQRT1_2            = 0.707106781186547524400844362104849039,
	MAXFLOAT             = 0x1.fffffep+127f,
};

// monetary.h
ssize_t strfmon(char *, size_t, const char *, ...);

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

// nl_types.h
enum {
	NL_SETD              = 1,
	NL_CAT_LOCALE        = 1,
};
typedef struct __nl_cat_d {
 void *__data;
 int __size;
} *nl_catd;
nl_catd catopen(const char *, int);
char *catgets(nl_catd, int, int, const char *)
 __attribute__((__format_arg__(4)));
int catclose(nl_catd);

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

// pwd.h
struct passwd {
 char *pw_name;
 char *pw_passwd;
 uid_t pw_uid;
 gid_t pw_gid;
 __darwin_time_t pw_change;
 char *pw_class;
 char *pw_gecos;
 char *pw_dir;
 char *pw_shell;
 __darwin_time_t pw_expire;
};
struct passwd *getpwuid(uid_t);
struct passwd *getpwnam(const char *);
int getpwuid_r(uid_t, struct passwd *, char *, size_t, struct passwd **);
int getpwnam_r(const char *, struct passwd *, char *, size_t, struct passwd **);
struct passwd *getpwent(void);
void setpwent(void);
void endpwent(void);

// regex.h
typedef __darwin_off_t regoff_t;
typedef struct {
 int re_magic;
 size_t re_nsub;
 const char *re_endp;
 struct re_guts *re_g;
} regex_t;
typedef struct {
 regoff_t rm_so;
 regoff_t rm_eo;
} regmatch_t;
enum {
	REG_EXTENDED         = 0001,
	REG_ICASE            = 0002,
	REG_NOSUB            = 0004,
	REG_NEWLINE          = 0010,
	REG_ENOSYS           = (-1),
	REG_NOMATCH          = 1,
	REG_BADPAT           = 2,
	REG_ECOLLATE         = 3,
	REG_ECTYPE           = 4,
	REG_EESCAPE          = 5,
	REG_ESUBREG          = 6,
	REG_EBRACK           = 7,
	REG_EPAREN           = 8,
	REG_EBRACE           = 9,
	REG_BADBR            = 10,
	REG_ERANGE           = 11,
	REG_ESPACE           = 12,
	REG_BADRPT           = 13,
	REG_NOTBOL           = 00001,
	REG_NOTEOL           = 00002,
};
int regcomp(regex_t * restrict, const char * restrict, int) 
size_t regerror(int, const regex_t * restrict, char * restrict, size_t);
int regexec(const regex_t * restrict, const char * restrict, size_t,
     regmatch_t __pmatch[ restrict], int);
void regfree(regex_t *);

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

// search.h
typedef struct entry {
 char *key;
 void *data;
} ENTRY;
typedef enum {
 FIND, ENTER
} ACTION;
typedef enum {
 preorder,
 postorder,
 endorder,
 leaf
} VISIT;
int hcreate(size_t);
void hdestroy(void);
ENTRY *hsearch(ENTRY, ACTION);
void insque(void *, void *);
void *lfind(const void *, const void *, size_t *, size_t,
     int (*)(const void *, const void *));
void *lsearch(const void *, void *, size_t *, size_t,
     int (*)(const void *, const void *));
void remque(void *);
void *tdelete(const void * restrict, void ** restrict,
     int (*)(const void *, const void *));
void *tfind(const void *, void * const *,
     int (*)(const void *, const void *));
void *tsearch(const void *, void **, int (*)(const void *, const void *));
void twalk(const void *, void (*)(const void *, VISIT, int));

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

// setjmp.h
typedef int jmp_buf[(18)];
typedef int sigjmp_buf[(18) + 1];
extern int setjmp(jmp_buf);
extern void longjmp(jmp_buf, int) __attribute__((noreturn));
int _setjmp(jmp_buf);
void _longjmp(jmp_buf, int) __attribute__((noreturn));
int sigsetjmp(sigjmp_buf, int);
void siglongjmp(sigjmp_buf, int) __attribute__((noreturn));

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

// stdarg.h
typedef __builtin_va_list va_list;
#define va_start(ap,param) __builtin_va_start(ap, param)
#define va_end(ap) __builtin_va_end(ap)
#define va_arg(ap,type) __builtin_va_arg(ap, type)
#define va_copy(dest,src) __builtin_va_copy(dest, src)
typedef __builtin_va_list __gnuc_va_list;

// stdbool.h
enum {
	bool                 = _Bool,
	true                 = 1,
	false                = 0,
};

// stddef.h
typedef int ptrdiff_t;
enum {
	NULL                 = ((void*)0),
};
#define offsetof(t,d) __builtin_offsetof(t, d)

// sys/_types/_va_list.h
typedef __darwin_va_list va_list;

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

// stdlib.h
typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 long long quot;
 long long rem;
} lldiv_t;
enum {
	EXIT_FAILURE         = 1,
	EXIT_SUCCESS         = 0,
	RAND_MAX             = 0x7fffffff,
};
extern int __mb_cur_max;
enum {
	MB_CUR_MAX           = __mb_cur_max,
};
void abort(void) __attribute__((noreturn));
int abs(int) __attribute__((const));
int atexit(void (*)(void));
double atof(const char *);
int atoi(const char *);
long atol(const char *);
long long
  atoll(const char *);
void *bsearch(const void *, const void *, size_t,
     size_t, int (*)(const void *, const void *));
void *calloc(size_t, size_t);
div_t div(int, int) __attribute__((const));
void exit(int) __attribute__((noreturn));
void free(void *);
char *getenv(const char *);
long labs(long) __attribute__((const));
ldiv_t ldiv(long, long) __attribute__((const));
long long
  llabs(long long);
lldiv_t lldiv(long long, long long);
void *malloc(size_t);
int mblen(const char *, size_t);
size_t mbstowcs(wchar_t * restrict , const char * restrict, size_t);
int mbtowc(wchar_t * restrict, const char * restrict, size_t);
int posix_memalign(void **, size_t, size_t) __attribute__((availability(macosx,introduced=10.6)));
void qsort(void *, size_t, size_t,
     int (*)(const void *, const void *));
int rand(void);
void *realloc(void *, size_t);
void srand(unsigned);
double strtod(const char *, char **) 
float strtof(const char *, char **) 
long strtol(const char *, char **, int);
long double
  strtold(const char *, char **);
long long
  strtoll(const char *, char **, int);
unsigned long
  strtoul(const char *, char **, int);
unsigned long long
  strtoull(const char *, char **, int);
int system(const char *) 
size_t wcstombs(char * restrict, const wchar_t * restrict, size_t);
int wctomb(char *, wchar_t);
void _Exit(int) __attribute__((noreturn));
long a64l(const char *);
double drand48(void);
char *ecvt(double, int, int *restrict, int *restrict);
double erand48(unsigned short[3]);
char *fcvt(double, int, int *restrict, int *restrict);
char *gcvt(double, int, char *);
int getsubopt(char **, char * const *, char **);
int grantpt(int);
char *initstate(unsigned, char *, size_t);
long jrand48(unsigned short[3]);
char *l64a(long);
void lcong48(unsigned short[7]);
long lrand48(void);
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void);
long nrand48(unsigned short[3]);
int posix_openpt(int);
char *ptsname(int);
int putenv(char *) 
long random(void);
int rand_r(unsigned *);
char *realpath(const char * restrict, char * restrict) 
unsigned short
 *seed48(unsigned short[3]);
int setenv(const char *, const char *, int) 
void setkey(const char *) 
char *setstate(const char *);
void srand48(long);
void srandom(unsigned);
int unlockpt(int);
int unsetenv(const char *) 

// string.h
void *memchr(const void *, int, size_t);
int memcmp(const void *, const void *, size_t);
void *memcpy(void *, const void *, size_t);
void *memmove(void *, const void *, size_t);
void *memset(void *, int, size_t);
char *strcat(char *, const char *);
char *strchr(const char *, int);
int strcmp(const char *, const char *);
int strcoll(const char *, const char *);
char *strcpy(char *, const char *);
size_t strcspn(const char *, const char *);
char *strerror(int) 
size_t strlen(const char *);
char *strncat(char *, const char *, size_t);
int strncmp(const char *, const char *, size_t);
char *strncpy(char *, const char *, size_t);
char *strpbrk(const char *, const char *);
char *strrchr(const char *, int);
size_t strspn(const char *, const char *);
char *strstr(const char *, const char *);
char *strtok(char *, const char *);
size_t strxfrm(char *, const char *, size_t);
char *strtok_r(char *, const char *, char **);
int strerror_r(int, char *, size_t);
char *strdup(const char *);
void *memccpy(void *, const void *, int, size_t);

// secure/_string.h
#define memccpy(dest,src,c,len) __builtin___memccpy_chk (dest, src, c, len, __darwin_obsz0 (dest))
#define memcpy(dest,src,len) __builtin___memcpy_chk (dest, src, len, __darwin_obsz0 (dest))
#define memmove(dest,src,len) __builtin___memmove_chk (dest, src, len, __darwin_obsz0 (dest))
#define memset(dest,val,len) __builtin___memset_chk (dest, val, len, __darwin_obsz0 (dest))
#define strcpy(dest,src) __builtin___strcpy_chk (dest, src, __darwin_obsz (dest))
#define strncpy(dest,src,len) __builtin___strncpy_chk (dest, src, len, __darwin_obsz (dest))
#define strcat(dest,src) __builtin___strcat_chk (dest, src, __darwin_obsz (dest))
#define strncat(dest,src,len) __builtin___strncat_chk (dest, src, len, __darwin_obsz (dest))

// strings.h
int bcmp(const void *, const void *, size_t) __attribute__((deprecated));
void bcopy(const void *, void *, size_t) __attribute__((deprecated));
void bzero(void *, size_t) __attribute__((deprecated));
char *index(const char *, int) __attribute__((deprecated));
char *rindex(const char *, int) __attribute__((deprecated));
int ffs(int);
int strcasecmp(const char *, const char *);
int strncasecmp(const char *, const char *, size_t);

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

// sys/shm.h
typedef unsigned short shmatt_t;
enum {
	SHM_RDONLY           = 010000,
	SHM_RND              = 020000,
	SHMLBA               = 4096,
	SHM_R                = (IPC_R),
	SHM_W                = (IPC_W),
};
#pragma pack(4)
struct shmid_ds
{
 struct ipc_perm shm_perm;
 size_t shm_segsz;
 pid_t shm_lpid;
 pid_t shm_cpid;
 shmatt_t shm_nattch;
 time_t shm_atime;
 time_t shm_dtime;
 time_t shm_ctime;
 void *shm_internal;
};
#pragma pack()
void *shmat (int, const void *, int);
int shmctl(int, int, struct shmid_ds *) 
int shmdt(const void *);
int shmget(key_t, size_t, int);

// sys/statvfs.h
struct statvfs {
 unsigned long f_bsize;
 unsigned long f_frsize;
 fsblkcnt_t f_blocks;
 fsblkcnt_t f_bfree;
 fsblkcnt_t f_bavail;
 fsfilcnt_t f_files;
 fsfilcnt_t f_ffree;
 fsfilcnt_t f_favail;
 unsigned long f_fsid;
 unsigned long f_flag;
 unsigned long f_namemax;
};
enum {
	ST_RDONLY            = 0x00000001,
	ST_NOSUID            = 0x00000002,
};
int fstatvfs(int, struct statvfs *);
int statvfs(const char * restrict, struct statvfs * restrict);

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

// sys/utsname.h
struct utsname {
 char sysname[256];
 char nodename[256];
 char release[256];
 char version[256];
 char machine[256];
};
int uname(struct utsname *);

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

// tar.h
enum {
	TMAGIC               = "ustar",
	TMAGLEN              = 6,
	TVERSION             = "00",
	TVERSLEN             = 2,
	REGTYPE              = '0',
	AREGTYPE             = '\0',
	LNKTYPE              = '1',
	SYMTYPE              = '2',
	CHRTYPE              = '3',
	BLKTYPE              = '4',
	DIRTYPE              = '5',
	FIFOTYPE             = '6',
	CONTTYPE             = '7',
	TSUID                = 04000,
	TSGID                = 02000,
	TSVTX                = 01000,
	TUREAD               = 00400,
	TUWRITE              = 00200,
	TUEXEC               = 00100,
	TGREAD               = 00040,
	TGWRITE              = 00020,
	TGEXEC               = 00010,
	TOREAD               = 00004,
	TOWRITE              = 00002,
	TOEXEC               = 00001,
};

// sys/termios.h
enum {
	VEOF                 = 0,
	VEOL                 = 1,
	VERASE               = 3,
	VKILL                = 5,
	VINTR                = 8,
	VQUIT                = 9,
	VSUSP                = 10,
	VSTART               = 12,
	VSTOP                = 13,
	VMIN                 = 16,
	VTIME                = 17,
	NCCS                 = 20,
	IGNBRK               = 0x00000001,
	BRKINT               = 0x00000002,
	IGNPAR               = 0x00000004,
	PARMRK               = 0x00000008,
	INPCK                = 0x00000010,
	ISTRIP               = 0x00000020,
	INLCR                = 0x00000040,
	IGNCR                = 0x00000080,
	ICRNL                = 0x00000100,
	IXON                 = 0x00000200,
	IXOFF                = 0x00000400,
	IXANY                = 0x00000800,
	OPOST                = 0x00000001,
	ONLCR                = 0x00000002,
	OCRNL                = 0x00000010,
	ONOCR                = 0x00000020,
	ONLRET               = 0x00000040,
	OFILL                = 0x00000080,
	NLDLY                = 0x00000300,
	TABDLY               = 0x00000c04,
	CRDLY                = 0x00003000,
	FFDLY                = 0x00004000,
	BSDLY                = 0x00008000,
	VTDLY                = 0x00010000,
	OFDEL                = 0x00020000,
	NL0                  = 0x00000000,
	NL1                  = 0x00000100,
	TAB0                 = 0x00000000,
	TAB1                 = 0x00000400,
	TAB2                 = 0x00000800,
	TAB3                 = 0x00000004,
	CR0                  = 0x00000000,
	CR1                  = 0x00001000,
	CR2                  = 0x00002000,
	CR3                  = 0x00003000,
	FF0                  = 0x00000000,
	FF1                  = 0x00004000,
	BS0                  = 0x00000000,
	BS1                  = 0x00008000,
	VT0                  = 0x00000000,
	VT1                  = 0x00010000,
	CSIZE                = 0x00000300,
	CS5                  = 0x00000000,
	CS6                  = 0x00000100,
	CS7                  = 0x00000200,
	CS8                  = 0x00000300,
	CSTOPB               = 0x00000400,
	CREAD                = 0x00000800,
	PARENB               = 0x00001000,
	PARODD               = 0x00002000,
	HUPCL                = 0x00004000,
	CLOCAL               = 0x00008000,
	ECHOE                = 0x00000002,
	ECHOK                = 0x00000004,
	ECHO                 = 0x00000008,
	ECHONL               = 0x00000010,
	ISIG                 = 0x00000080,
	ICANON               = 0x00000100,
	IEXTEN               = 0x00000400,
	TOSTOP               = 0x00400000,
	NOFLSH               = 0x80000000,
};
typedef unsigned long tcflag_t;
typedef unsigned char cc_t;
typedef unsigned long speed_t;
struct termios {
 tcflag_t c_iflag;
 tcflag_t c_oflag;
 tcflag_t c_cflag;
 tcflag_t c_lflag;
 cc_t c_cc[20];
 speed_t c_ispeed;
 speed_t c_ospeed;
};
enum {
	TCSANOW              = 0,
	TCSADRAIN            = 1,
	TCSAFLUSH            = 2,
	B0                   = 0,
	B50                  = 50,
	B75                  = 75,
	B110                 = 110,
	B134                 = 134,
	B150                 = 150,
	B200                 = 200,
	B300                 = 300,
	B600                 = 600,
	B1200                = 1200,
	B1800                = 1800,
	B2400                = 2400,
	B4800                = 4800,
	B9600                = 9600,
	B19200               = 19200,
	B38400               = 38400,
	TCIFLUSH             = 1,
	TCOFLUSH             = 2,
	TCIOFLUSH            = 3,
	TCOOFF               = 1,
	TCOON                = 2,
	TCIOFF               = 3,
	TCION                = 4,
};
speed_t cfgetispeed(const struct termios *);
speed_t cfgetospeed(const struct termios *);
int cfsetispeed(struct termios *, speed_t);
int cfsetospeed(struct termios *, speed_t);
int tcgetattr(int, struct termios *);
int tcsetattr(int, int, const struct termios *);
int tcdrain(int) 
int tcflow(int, int);
int tcflush(int, int);
int tcsendbreak(int, int);

// termios.h
pid_t tcgetsid(int);

// tgmath.h
typedef void _Argument_type_is_not_arithmetic;
static _Argument_type_is_not_arithmetic __tg_promote(...)
  __attribute__((__unavailable__,__overloadable__));
static double __attribute__((__overloadable__)) __tg_promote(int);
static double __attribute__((__overloadable__)) __tg_promote(unsigned int);
static double __attribute__((__overloadable__)) __tg_promote(long);
static double __attribute__((__overloadable__)) __tg_promote(unsigned long);
static double __attribute__((__overloadable__)) __tg_promote(long long);
static double __attribute__((__overloadable__)) __tg_promote(unsigned long long);
static float __attribute__((__overloadable__)) __tg_promote(float);
static double __attribute__((__overloadable__)) __tg_promote(double);
static long double __attribute__((__overloadable__)) __tg_promote(long double);
static float _Complex __attribute__((__overloadable__)) __tg_promote(float _Complex);
static double _Complex __attribute__((__overloadable__)) __tg_promote(double _Complex);
static long double _Complex __attribute__((__overloadable__)) __tg_promote(long double _Complex);
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_acos(float __x) {return acosf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_acos(double __x) {return acos(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_acos(long double __x) {return acosl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_acos(float _Complex __x) {return cacosf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_acos(double _Complex __x) {return cacos(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_acos(long double _Complex __x) {return cacosl(__x);}
#define acos(__x) __tg_acos(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_asin(float __x) {return asinf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_asin(double __x) {return asin(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_asin(long double __x) {return asinl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_asin(float _Complex __x) {return casinf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_asin(double _Complex __x) {return casin(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_asin(long double _Complex __x) {return casinl(__x);}
#define asin(__x) __tg_asin(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_atan(float __x) {return atanf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_atan(double __x) {return atan(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_atan(long double __x) {return atanl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_atan(float _Complex __x) {return catanf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_atan(double _Complex __x) {return catan(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_atan(long double _Complex __x) {return catanl(__x);}
#define atan(__x) __tg_atan(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_acosh(float __x) {return acoshf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_acosh(double __x) {return acosh(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_acosh(long double __x) {return acoshl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_acosh(float _Complex __x) {return cacoshf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_acosh(double _Complex __x) {return cacosh(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_acosh(long double _Complex __x) {return cacoshl(__x);}
#define acosh(__x) __tg_acosh(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_asinh(float __x) {return asinhf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_asinh(double __x) {return asinh(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_asinh(long double __x) {return asinhl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_asinh(float _Complex __x) {return casinhf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_asinh(double _Complex __x) {return casinh(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_asinh(long double _Complex __x) {return casinhl(__x);}
#define asinh(__x) __tg_asinh(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_atanh(float __x) {return atanhf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_atanh(double __x) {return atanh(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_atanh(long double __x) {return atanhl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_atanh(float _Complex __x) {return catanhf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_atanh(double _Complex __x) {return catanh(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_atanh(long double _Complex __x) {return catanhl(__x);}
#define atanh(__x) __tg_atanh(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_cos(float __x) {return cosf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cos(double __x) {return cos(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cos(long double __x) {return cosl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cos(float _Complex __x) {return ccosf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cos(double _Complex __x) {return ccos(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cos(long double _Complex __x) {return ccosl(__x);}
#define cos(__x) __tg_cos(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_sin(float __x) {return sinf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_sin(double __x) {return sin(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_sin(long double __x) {return sinl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_sin(float _Complex __x) {return csinf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_sin(double _Complex __x) {return csin(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_sin(long double _Complex __x) {return csinl(__x);}
#define sin(__x) __tg_sin(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_tan(float __x) {return tanf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_tan(double __x) {return tan(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_tan(long double __x) {return tanl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_tan(float _Complex __x) {return ctanf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_tan(double _Complex __x) {return ctan(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_tan(long double _Complex __x) {return ctanl(__x);}
#define tan(__x) __tg_tan(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_cosh(float __x) {return coshf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cosh(double __x) {return cosh(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cosh(long double __x) {return coshl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cosh(float _Complex __x) {return ccoshf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cosh(double _Complex __x) {return ccosh(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cosh(long double _Complex __x) {return ccoshl(__x);}
#define cosh(__x) __tg_cosh(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_sinh(float __x) {return sinhf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_sinh(double __x) {return sinh(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_sinh(long double __x) {return sinhl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_sinh(float _Complex __x) {return csinhf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_sinh(double _Complex __x) {return csinh(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_sinh(long double _Complex __x) {return csinhl(__x);}
#define sinh(__x) __tg_sinh(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_tanh(float __x) {return tanhf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_tanh(double __x) {return tanh(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_tanh(long double __x) {return tanhl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_tanh(float _Complex __x) {return ctanhf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_tanh(double _Complex __x) {return ctanh(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_tanh(long double _Complex __x) {return ctanhl(__x);}
#define tanh(__x) __tg_tanh(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_exp(float __x) {return expf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_exp(double __x) {return exp(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_exp(long double __x) {return expl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_exp(float _Complex __x) {return cexpf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_exp(double _Complex __x) {return cexp(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_exp(long double _Complex __x) {return cexpl(__x);}
#define exp(__x) __tg_exp(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_log(float __x) {return logf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_log(double __x) {return log(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_log(long double __x) {return logl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_log(float _Complex __x) {return clogf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_log(double _Complex __x) {return clog(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_log(long double _Complex __x) {return clogl(__x);}
#define log(__x) __tg_log(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_pow(float __x, float __y) {return powf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_pow(double __x, double __y) {return pow(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_pow(long double __x, long double __y) {return powl(__x, __y);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_pow(float _Complex __x, float _Complex __y) {return cpowf(__x, __y);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_pow(double _Complex __x, double _Complex __y) {return cpow(__x, __y);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_pow(long double _Complex __x, long double _Complex __y)
    {return cpowl(__x, __y);}
#define pow(__x,__y) __tg_pow(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_sqrt(float __x) {return sqrtf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_sqrt(double __x) {return sqrt(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_sqrt(long double __x) {return sqrtl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_sqrt(float _Complex __x) {return csqrtf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_sqrt(double _Complex __x) {return csqrt(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_sqrt(long double _Complex __x) {return csqrtl(__x);}
#define sqrt(__x) __tg_sqrt(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_fabs(float __x) {return fabsf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fabs(double __x) {return fabs(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fabs(long double __x) {return fabsl(__x);}
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_fabs(float _Complex __x) {return cabsf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fabs(double _Complex __x) {return cabs(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fabs(long double _Complex __x) {return cabsl(__x);}
#define fabs(__x) __tg_fabs(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_atan2(float __x, float __y) {return atan2f(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_atan2(double __x, double __y) {return atan2(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_atan2(long double __x, long double __y) {return atan2l(__x, __y);}
#define atan2(__x,__y) __tg_atan2(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_cbrt(float __x) {return cbrtf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cbrt(double __x) {return cbrt(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cbrt(long double __x) {return cbrtl(__x);}
#define cbrt(__x) __tg_cbrt(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_ceil(float __x) {return ceilf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_ceil(double __x) {return ceil(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_ceil(long double __x) {return ceill(__x);}
#define ceil(__x) __tg_ceil(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_copysign(float __x, float __y) {return copysignf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_copysign(double __x, double __y) {return copysign(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_copysign(long double __x, long double __y) {return copysignl(__x, __y);}
#define copysign(__x,__y) __tg_copysign(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_erf(float __x) {return erff(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_erf(double __x) {return erf(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_erf(long double __x) {return erfl(__x);}
#define erf(__x) __tg_erf(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_erfc(float __x) {return erfcf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_erfc(double __x) {return erfc(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_erfc(long double __x) {return erfcl(__x);}
#define erfc(__x) __tg_erfc(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_exp2(float __x) {return exp2f(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_exp2(double __x) {return exp2(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_exp2(long double __x) {return exp2l(__x);}
#define exp2(__x) __tg_exp2(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_expm1(float __x) {return expm1f(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_expm1(double __x) {return expm1(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_expm1(long double __x) {return expm1l(__x);}
#define expm1(__x) __tg_expm1(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_fdim(float __x, float __y) {return fdimf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fdim(double __x, double __y) {return fdim(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fdim(long double __x, long double __y) {return fdiml(__x, __y);}
#define fdim(__x,__y) __tg_fdim(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_floor(float __x) {return floorf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_floor(double __x) {return floor(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_floor(long double __x) {return floorl(__x);}
#define floor(__x) __tg_floor(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_fma(float __x, float __y, float __z)
    {return fmaf(__x, __y, __z);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fma(double __x, double __y, double __z)
    {return fma(__x, __y, __z);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fma(long double __x,long double __y, long double __z)
    {return fmal(__x, __y, __z);}
#define fma(__x,__y,__z) __tg_fma(__tg_promote3((__x), (__y), (__z))(__x), __tg_promote3((__x), (__y), (__z))(__y), __tg_promote3((__x), (__y), (__z))(__z))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_fmax(float __x, float __y) {return fmaxf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fmax(double __x, double __y) {return fmax(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fmax(long double __x, long double __y) {return fmaxl(__x, __y);}
#define fmax(__x,__y) __tg_fmax(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_fmin(float __x, float __y) {return fminf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fmin(double __x, double __y) {return fmin(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fmin(long double __x, long double __y) {return fminl(__x, __y);}
#define fmin(__x,__y) __tg_fmin(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_fmod(float __x, float __y) {return fmodf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fmod(double __x, double __y) {return fmod(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_fmod(long double __x, long double __y) {return fmodl(__x, __y);}
#define fmod(__x,__y) __tg_fmod(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_frexp(float __x, int* __y) {return frexpf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_frexp(double __x, int* __y) {return frexp(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_frexp(long double __x, int* __y) {return frexpl(__x, __y);}
#define frexp(__x,__y) __tg_frexp(__tg_promote1((__x))(__x), __y)
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_hypot(float __x, float __y) {return hypotf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_hypot(double __x, double __y) {return hypot(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_hypot(long double __x, long double __y) {return hypotl(__x, __y);}
#define hypot(__x,__y) __tg_hypot(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static int
    __attribute__((__overloadable__, __always_inline__))
    __tg_ilogb(float __x) {return ilogbf(__x);}
static int
    __attribute__((__overloadable__, __always_inline__))
    __tg_ilogb(double __x) {return ilogb(__x);}
static int
    __attribute__((__overloadable__, __always_inline__))
    __tg_ilogb(long double __x) {return ilogbl(__x);}
#define ilogb(__x) __tg_ilogb(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_ldexp(float __x, int __y) {return ldexpf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_ldexp(double __x, int __y) {return ldexp(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_ldexp(long double __x, int __y) {return ldexpl(__x, __y);}
#define ldexp(__x,__y) __tg_ldexp(__tg_promote1((__x))(__x), __y)
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_lgamma(float __x) {return lgammaf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_lgamma(double __x) {return lgamma(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_lgamma(long double __x) {return lgammal(__x);}
#define lgamma(__x) __tg_lgamma(__tg_promote1((__x))(__x))
static long long
    __attribute__((__overloadable__, __always_inline__))
    __tg_llrint(float __x) {return llrintf(__x);}
static long long
    __attribute__((__overloadable__, __always_inline__))
    __tg_llrint(double __x) {return llrint(__x);}
static long long
    __attribute__((__overloadable__, __always_inline__))
    __tg_llrint(long double __x) {return llrintl(__x);}
#define llrint(__x) __tg_llrint(__tg_promote1((__x))(__x))
static long long
    __attribute__((__overloadable__, __always_inline__))
    __tg_llround(float __x) {return llroundf(__x);}
static long long
    __attribute__((__overloadable__, __always_inline__))
    __tg_llround(double __x) {return llround(__x);}
static long long
    __attribute__((__overloadable__, __always_inline__))
    __tg_llround(long double __x) {return llroundl(__x);}
#define llround(__x) __tg_llround(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_log10(float __x) {return log10f(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_log10(double __x) {return log10(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_log10(long double __x) {return log10l(__x);}
#define log10(__x) __tg_log10(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_log1p(float __x) {return log1pf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_log1p(double __x) {return log1p(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_log1p(long double __x) {return log1pl(__x);}
#define log1p(__x) __tg_log1p(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_log2(float __x) {return log2f(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_log2(double __x) {return log2(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_log2(long double __x) {return log2l(__x);}
#define log2(__x) __tg_log2(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_logb(float __x) {return logbf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_logb(double __x) {return logb(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_logb(long double __x) {return logbl(__x);}
#define logb(__x) __tg_logb(__tg_promote1((__x))(__x))
static long
    __attribute__((__overloadable__, __always_inline__))
    __tg_lrint(float __x) {return lrintf(__x);}
static long
    __attribute__((__overloadable__, __always_inline__))
    __tg_lrint(double __x) {return lrint(__x);}
static long
    __attribute__((__overloadable__, __always_inline__))
    __tg_lrint(long double __x) {return lrintl(__x);}
#define lrint(__x) __tg_lrint(__tg_promote1((__x))(__x))
static long
    __attribute__((__overloadable__, __always_inline__))
    __tg_lround(float __x) {return lroundf(__x);}
static long
    __attribute__((__overloadable__, __always_inline__))
    __tg_lround(double __x) {return lround(__x);}
static long
    __attribute__((__overloadable__, __always_inline__))
    __tg_lround(long double __x) {return lroundl(__x);}
#define lround(__x) __tg_lround(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_nearbyint(float __x) {return nearbyintf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_nearbyint(double __x) {return nearbyint(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_nearbyint(long double __x) {return nearbyintl(__x);}
#define nearbyint(__x) __tg_nearbyint(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_nextafter(float __x, float __y) {return nextafterf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_nextafter(double __x, double __y) {return nextafter(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_nextafter(long double __x, long double __y) {return nextafterl(__x, __y);}
#define nextafter(__x,__y) __tg_nextafter(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_nexttoward(float __x, long double __y) {return nexttowardf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_nexttoward(double __x, long double __y) {return nexttoward(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_nexttoward(long double __x, long double __y) {return nexttowardl(__x, __y);}
#define nexttoward(__x,__y) __tg_nexttoward(__tg_promote1((__x))(__x), (__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_remainder(float __x, float __y) {return remainderf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_remainder(double __x, double __y) {return remainder(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_remainder(long double __x, long double __y) {return remainderl(__x, __y);}
#define remainder(__x,__y) __tg_remainder(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_remquo(float __x, float __y, int* __z)
    {return remquof(__x, __y, __z);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_remquo(double __x, double __y, int* __z)
    {return remquo(__x, __y, __z);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_remquo(long double __x,long double __y, int* __z)
    {return remquol(__x, __y, __z);}
#define remquo(__x,__y,__z) __tg_remquo(__tg_promote2((__x), (__y))(__x), __tg_promote2((__x), (__y))(__y), (__z))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_rint(float __x) {return rintf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_rint(double __x) {return rint(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_rint(long double __x) {return rintl(__x);}
#define rint(__x) __tg_rint(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_round(float __x) {return roundf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_round(double __x) {return round(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_round(long double __x) {return roundl(__x);}
#define round(__x) __tg_round(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_scalbn(float __x, int __y) {return scalbnf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_scalbn(double __x, int __y) {return scalbn(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_scalbn(long double __x, int __y) {return scalbnl(__x, __y);}
#define scalbn(__x,__y) __tg_scalbn(__tg_promote1((__x))(__x), __y)
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_scalbln(float __x, long __y) {return scalblnf(__x, __y);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_scalbln(double __x, long __y) {return scalbln(__x, __y);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_scalbln(long double __x, long __y) {return scalblnl(__x, __y);}
#define scalbln(__x,__y) __tg_scalbln(__tg_promote1((__x))(__x), __y)
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_tgamma(float __x) {return tgammaf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_tgamma(double __x) {return tgamma(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_tgamma(long double __x) {return tgammal(__x);}
#define tgamma(__x) __tg_tgamma(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_trunc(float __x) {return truncf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_trunc(double __x) {return trunc(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_trunc(long double __x) {return truncl(__x);}
#define trunc(__x) __tg_trunc(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_carg(float __x) {return atan2f(0.F, __x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_carg(double __x) {return __tg_atan2((__typeof__(__tg_promote((0.)) + __tg_promote((__x))))(0.), (__typeof__(__tg_promote((0.)) + __tg_promote((__x))))(__x));}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_carg(long double __x) {return atan2l(0.L, __x);}
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_carg(float _Complex __x) {return cargf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_carg(double _Complex __x) {return carg(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_carg(long double _Complex __x) {return cargl(__x);}
#define carg(__x) __tg_carg(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_cimag(float __x) {return 0;}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cimag(double __x) {return 0;}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cimag(long double __x) {return 0;}
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_cimag(float _Complex __x) {return cimagf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cimag(double _Complex __x) {return cimag(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_cimag(long double _Complex __x) {return cimagl(__x);}
#define cimag(__x) __tg_cimag(__tg_promote1((__x))(__x))
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_conj(float __x) {return __x;}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_conj(double __x) {return __x;}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_conj(long double __x) {return __x;}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_conj(float _Complex __x) {return conjf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_conj(double _Complex __x) {return conj(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_conj(long double _Complex __x) {return conjl(__x);}
#define conj(__x) __tg_conj(__tg_promote1((__x))(__x))
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cproj(float __x) {return cprojf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cproj(double __x) {return cproj(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cproj(long double __x) {return cprojl(__x);}
static float _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cproj(float _Complex __x) {return cprojf(__x);}
static double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cproj(double _Complex __x) {return cproj(__x);}
static long double _Complex
    __attribute__((__overloadable__, __always_inline__))
    __tg_cproj(long double _Complex __x) {return cprojl(__x);}
#define cproj(__x) __tg_cproj(__tg_promote1((__x))(__x))
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_creal(float __x) {return __x;}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_creal(double __x) {return __x;}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_creal(long double __x) {return __x;}
static float
    __attribute__((__overloadable__, __always_inline__))
    __tg_creal(float _Complex __x) {return crealf(__x);}
static double
    __attribute__((__overloadable__, __always_inline__))
    __tg_creal(double _Complex __x) {return creal(__x);}
static long double
    __attribute__((__overloadable__, __always_inline__))
    __tg_creal(long double _Complex __x) {return creall(__x);}
#define creal(__x) __tg_creal(__tg_promote1((__x))(__x))

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

// utmpx.h
enum {
	EMPTY                = 0,
	RUN_LVL              = 1,
	BOOT_TIME            = 2,
	OLD_TIME             = 3,
	NEW_TIME             = 4,
	INIT_PROCESS         = 5,
	LOGIN_PROCESS        = 6,
	USER_PROCESS         = 7,
	DEAD_PROCESS         = 8,
};
struct utmpx {
 char ut_user[256];
 char ut_id[4];
 char ut_line[32];
 pid_t ut_pid;
 short ut_type;
 struct timeval ut_tv;
 char ut_host[256];
 __uint32_t ut_pad[16];
};
void endutxent(void);
struct utmpx *
 getutxent(void);
struct utmpx *
 getutxid(const struct utmpx *);
struct utmpx *
 getutxline(const struct utmpx *);
struct utmpx *
 pututxline(const struct utmpx *);
void setutxent(void);

// sys/_types/_mbstate_t.h
typedef __darwin_mbstate_t mbstate_t;

// sys/_types/_ct_rune_t.h
typedef __darwin_ct_rune_t ct_rune_t;

// sys/_types/_rune_t.h
typedef __darwin_rune_t rune_t;

// sys/_types/_wint_t.h
typedef __darwin_wint_t wint_t;

// _types/_wctype_t.h
typedef __darwin_wctype_t wctype_t;

// _wctype.h
enum {
	WEOF                 = __DARWIN_WEOF,
};
inline int
iswalnum(wint_t _wc)
{
 return (__istype(_wc, 0x00000100L|0x00000400L));
}
inline int
iswalpha(wint_t _wc)
{
 return (__istype(_wc, 0x00000100L));
}
inline int
iswcntrl(wint_t _wc)
{
 return (__istype(_wc, 0x00000200L));
}
inline int
iswctype(wint_t _wc, wctype_t _charclass)
{
 return (__istype(_wc, _charclass));
}
inline int
iswdigit(wint_t _wc)
{
 return (__isctype(_wc, 0x00000400L));
}
inline int
iswgraph(wint_t _wc)
{
 return (__istype(_wc, 0x00000800L));
}
inline int
iswlower(wint_t _wc)
{
 return (__istype(_wc, 0x00001000L));
}
inline int
iswprint(wint_t _wc)
{
 return (__istype(_wc, 0x00040000L));
}
inline int
iswpunct(wint_t _wc)
{
 return (__istype(_wc, 0x00002000L));
}
inline int
iswspace(wint_t _wc)
{
 return (__istype(_wc, 0x00004000L));
}
inline int
iswupper(wint_t _wc)
{
 return (__istype(_wc, 0x00008000L));
}
inline int
iswxdigit(wint_t _wc)
{
 return (__isctype(_wc, 0x00010000L));
}
inline wint_t
towlower(wint_t _wc)
{
        return (__tolower(_wc));
}
inline wint_t
towupper(wint_t _wc)
{
        return (__toupper(_wc));
}
wctype_t
 wctype(const char *);

// wchar.h
wint_t btowc(int);
wint_t fgetwc(FILE *);
wchar_t *fgetws(wchar_t * restrict, int, FILE * restrict);
wint_t fputwc(wchar_t, FILE *);
int fputws(const wchar_t * restrict, FILE * restrict);
int fwide(FILE *, int);
int fwprintf(FILE * restrict, const wchar_t * restrict, ...);
int fwscanf(FILE * restrict, const wchar_t * restrict, ...);
wint_t getwc(FILE *);
wint_t getwchar(void);
size_t mbrlen(const char * restrict, size_t, mbstate_t * restrict);
size_t mbrtowc(wchar_t * restrict, const char * restrict, size_t,
     mbstate_t * restrict);
int mbsinit(const mbstate_t *);
size_t mbsrtowcs(wchar_t * restrict, const char ** restrict, size_t,
     mbstate_t * restrict);
wint_t putwc(wchar_t, FILE *);
wint_t putwchar(wchar_t);
int swprintf(wchar_t * restrict, size_t, const wchar_t * restrict, ...);
int swscanf(const wchar_t * restrict, const wchar_t * restrict, ...);
wint_t ungetwc(wint_t, FILE *);
int vfwprintf(FILE * restrict, const wchar_t * restrict,
     __darwin_va_list);
int vswprintf(wchar_t * restrict, size_t, const wchar_t * restrict,
     __darwin_va_list);
int vwprintf(const wchar_t * restrict, __darwin_va_list);
size_t wcrtomb(char * restrict, wchar_t, mbstate_t * restrict);
wchar_t *wcscat(wchar_t * restrict, const wchar_t * restrict);
wchar_t *wcschr(const wchar_t *, wchar_t);
int wcscmp(const wchar_t *, const wchar_t *);
int wcscoll(const wchar_t *, const wchar_t *);
wchar_t *wcscpy(wchar_t * restrict, const wchar_t * restrict);
size_t wcscspn(const wchar_t *, const wchar_t *);
size_t wcsftime(wchar_t * restrict, size_t, const wchar_t * restrict,
     const struct tm * restrict) 
size_t wcslen(const wchar_t *);
wchar_t *wcsncat(wchar_t * restrict, const wchar_t * restrict, size_t);
int wcsncmp(const wchar_t *, const wchar_t *, size_t);
wchar_t *wcsncpy(wchar_t * restrict , const wchar_t * restrict, size_t);
wchar_t *wcspbrk(const wchar_t *, const wchar_t *);
wchar_t *wcsrchr(const wchar_t *, wchar_t);
size_t wcsrtombs(char * restrict, const wchar_t ** restrict, size_t,
     mbstate_t * restrict);
size_t wcsspn(const wchar_t *, const wchar_t *);
wchar_t *wcsstr(const wchar_t * restrict, const wchar_t * restrict);
size_t wcsxfrm(wchar_t * restrict, const wchar_t * restrict, size_t);
int wctob(wint_t);
double wcstod(const wchar_t * restrict, wchar_t ** restrict);
wchar_t *wcstok(wchar_t * restrict, const wchar_t * restrict,
     wchar_t ** restrict);
long wcstol(const wchar_t * restrict, wchar_t ** restrict, int);
unsigned long
  wcstoul(const wchar_t * restrict, wchar_t ** restrict, int);
wchar_t *wmemchr(const wchar_t *, wchar_t, size_t);
int wmemcmp(const wchar_t *, const wchar_t *, size_t);
wchar_t *wmemcpy(wchar_t * restrict, const wchar_t * restrict, size_t);
wchar_t *wmemmove(wchar_t *, const wchar_t *, size_t);
wchar_t *wmemset(wchar_t *, wchar_t, size_t);
int wprintf(const wchar_t * restrict, ...);
int wscanf(const wchar_t * restrict, ...);
int wcswidth(const wchar_t *, size_t);
int wcwidth(wchar_t);
int vfwscanf(FILE * restrict, const wchar_t * restrict,
     __darwin_va_list);
int vswscanf(const wchar_t * restrict, const wchar_t * restrict,
     __darwin_va_list);
int vwscanf(const wchar_t * restrict, __darwin_va_list);
float wcstof(const wchar_t * restrict, wchar_t ** restrict);
long double
 wcstold(const wchar_t * restrict, wchar_t ** restrict);
long long
 wcstoll(const wchar_t * restrict, wchar_t ** restrict, int);
unsigned long long
 wcstoull(const wchar_t * restrict, wchar_t ** restrict, int);

// _types/_wctrans_t.h
typedef __darwin_wctrans_t wctrans_t;

// wctype.h
inline int
iswblank(wint_t _wc)
{
 return (__istype(_wc, 0x00020000L));
}
inline int
iswascii(wint_t _wc)
{
 return ((_wc & ~0x7F) == 0);
}
inline int
iswhexnumber(wint_t _wc)
{
 return (__istype(_wc, 0x00010000L));
}
inline int
iswideogram(wint_t _wc)
{
 return (__istype(_wc, 0x00080000L));
}
inline int
iswnumber(wint_t _wc)
{
 return (__istype(_wc, 0x00000400L));
}
inline int
iswphonogram(wint_t _wc)
{
 return (__istype(_wc, 0x00200000L));
}
inline int
iswrune(wint_t _wc)
{
 return (__istype(_wc, 0xFFFFFFF0L));
}
inline int
iswspecial(wint_t _wc)
{
 return (__istype(_wc, 0x00100000L));
}
wint_t towctrans(wint_t, wctrans_t);
wctrans_t
 wctrans(const char *);
]]
