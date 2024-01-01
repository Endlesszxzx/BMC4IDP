
typedef long unsigned int size_t;
typedef __builtin_va_list __gnuc_va_list;
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
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
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
typedef long int __suseconds64_t;
typedef int __daddr_t;
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
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE
{
  int _flags;
  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;
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
  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
typedef __gnuc_va_list va_list;
typedef __off_t off_t;
typedef __ssize_t ssize_t;
typedef __fpos_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int fclose (FILE *__stream);
extern FILE *tmpfile (void)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) ;
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *tempnam (const char *__dir, const char *__pfx)
   __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (__builtin_free, 1)));
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) ;
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) ;
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) ;
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;
extern int scanf (const char *__restrict __format, ...) ;
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     __attribute__ ((__access__ (__write_only__, 1, 2)));
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) ;
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) ;
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream);
extern int fseeko (FILE *__stream, __off_t __off, int __whence);
extern __off_t ftello (FILE *__stream) ;
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);
extern int fsetpos (FILE *__stream, const fpos_t *__pos);
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void perror (const char *__s);
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int pclose (FILE *__stream);
extern FILE *popen (const char *__command, const char *__modes)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (pclose, 1))) ;
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__access__ (__write_only__, 1)));
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);


extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));

void task_compute();
void task_RR_Wheel();
void task_FL_Wheel();
const int __VERIFIER_thread_priorities[] = {5, 5, 5, 5, 22};
const char* __VERIFIER_threads[] = {"c::task_RR_Wheel", "c::task_FR_Wheel",
    "c::task_FL_Wheel", "c::task_RL_Wheel", "c::task_compute"};
int brake_acc_nodiv_ctrl_B_local_RT_h;
int brake_acc_nodiv_ctrl_B_local_RTH;
int brake_acc_nodiv_ctrl_B_local_RT4;
int brake_acc_nodiv_ctrl_B_local_RT1;
int brake_acc_nodiv_ctrl_B_local_RT2;
int brake_acc_nodiv_ctrl_B_local_RT3;
int brake_acc_nodiv_ctrl_B_local_RT14;
int brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh = 100;
int brake_acc_nodiv_ctrl_B_local_ABS_RL_Wheel_Threshold_10kmh = 100;
int brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh = 100;
int brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh = 100;
int brake_acc_nodiv_ctrl_P_RT_X0;
int brake_acc_nodiv_ctrl_P_RT4_X0;
int brake_acc_nodiv_ctrl_P_RT1_X0;
int brake_acc_nodiv_ctrl_P_RT2_X0;
int brake_acc_nodiv_ctrl_P_RT3_X0;
int brake_acc_nodiv_ctrl_P_Gain1_Gain;
int brake_acc_nodiv_ctrl_P_Distribution_Gain0;
int brake_acc_nodiv_ctrl_P_Distribution_Gain1;
int brake_acc_nodiv_ctrl_P_Distribution_Gain2;
int brake_acc_nodiv_ctrl_P_Distribution_Gain3;
int brake_acc_nodiv_ctrl_P_average_rpm_Gain;
int brake_acc_nodiv_ctrl_P_wgrads_Gain;
int brake_acc_nodiv_ctrl_P_vkmh_Gain;
int vkmh;
int test;
int RT9;
int RT10;
int RT11;
int RT12;
int RT14;
int RT_Buffer0;
int RT0_Buffer0;
int RT1_Buffer0;
int RT2_Buffer0;
int RT3_Buffer0;
int RT4_Buffer0;
int Distribution_idx;
int Distribution_idx_0;
int Distribution_idx_1;
int cnt1, cnt2, cnt3;
void task_compute(void ) {
    __CPROVER_ASYNC_1:
    task_FL_Wheel();
        cnt1++;
        brake_acc_nodiv_ctrl_B_local_RT_h = brake_acc_nodiv_ctrl_P_RT_X0;
        brake_acc_nodiv_ctrl_B_local_RT4 = brake_acc_nodiv_ctrl_P_RT4_X0;
        brake_acc_nodiv_ctrl_B_local_RT1 = brake_acc_nodiv_ctrl_P_RT1_X0;
        brake_acc_nodiv_ctrl_B_local_RT2 = brake_acc_nodiv_ctrl_P_RT2_X0;
        brake_acc_nodiv_ctrl_B_local_RT3 = brake_acc_nodiv_ctrl_P_RT3_X0;
        test = 0;
        Distribution_idx = brake_acc_nodiv_ctrl_P_Distribution_Gain1 +
            brake_acc_nodiv_ctrl_B_local_RT14;
        Distribution_idx_0 = brake_acc_nodiv_ctrl_P_Distribution_Gain2 +
            brake_acc_nodiv_ctrl_B_local_RT14;
        Distribution_idx_1 = brake_acc_nodiv_ctrl_P_Distribution_Gain3 +
            brake_acc_nodiv_ctrl_B_local_RT14;
        vkmh = RT9+RT10;
        vkmh = vkmh + RT11;
        vkmh = vkmh + RT12;
        vkmh = vkmh + brake_acc_nodiv_ctrl_P_average_rpm_Gain;
        vkmh = vkmh + brake_acc_nodiv_ctrl_P_wgrads_Gain;
        vkmh = vkmh + brake_acc_nodiv_ctrl_P_vkmh_Gain;
        test++;
        if (test != 0) {
        }
        if (test != 1) {
        }
        RT_Buffer0 = brake_acc_nodiv_ctrl_P_Distribution_Gain0 + brake_acc_nodiv_ctrl_B_local_RT14;
        RT4_Buffer0 = vkmh;
        RT1_Buffer0 = Distribution_idx;
        RT2_Buffer0 = Distribution_idx_0;
        RT3_Buffer0 = Distribution_idx_1;
}
void task_RR_Wheel(void ) {
    __CPROVER_ASYNC_1:
    task_compute();
        cnt2 ++;
        test = 0;
        if (test != 0) {
        }
        brake_acc_nodiv_ctrl_B_local_RT_h = brake_acc_nodiv_ctrl_P_RT_X0;
        brake_acc_nodiv_ctrl_B_local_RT4 = brake_acc_nodiv_ctrl_P_RT4_X0;
        brake_acc_nodiv_ctrl_B_local_RT1 = brake_acc_nodiv_ctrl_P_RT1_X0;
        brake_acc_nodiv_ctrl_B_local_RT2 = brake_acc_nodiv_ctrl_P_RT2_X0;
        brake_acc_nodiv_ctrl_B_local_RT3 = brake_acc_nodiv_ctrl_P_RT3_X0;
        int rtb_to_int;
        brake_acc_nodiv_ctrl_B_local_RT_h = RT_Buffer0;
        brake_acc_nodiv_ctrl_B_local_RT4 = RT4_Buffer0;
        rtb_to_int = 10;
        bool rtb_RelationalOperator;
        int rtb_vms;
        int u;
        rtb_vms = 10 + brake_acc_nodiv_ctrl_B_local_RT4;
        u = rtb_vms + 10;
        u = u + rtb_to_int;
        int positive_UpperSat_local = 100;
        if (u >= positive_UpperSat_local) {
            u = 100;
        } else {
            int positive_LowerSat_local = 5;
            if (u <= positive_LowerSat_local) {
                u = 5;
            }
        }
        int tmp0 = 10;
        int tmp1 = 10 + rtb_vms;
        if (tmp0 > tmp1) {
            rtb_RelationalOperator = true;
        } else {
            rtb_RelationalOperator = false;
        }
        int Threshold_10kmh_Threshold_local = 100;
        if (brake_acc_nodiv_ctrl_B_local_RT4 >= Threshold_10kmh_Threshold_local) {
            if (rtb_RelationalOperator) {
                brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh = 8;
            } else {
                brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh = brake_acc_nodiv_ctrl_B_local_RT_h;
            }
        } else {
            brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh = brake_acc_nodiv_ctrl_B_local_RT_h;
        }
        brake_acc_nodiv_ctrl_B_local_RT1 = RT1_Buffer0;
        RT9 = rtb_to_int;
    }
void task_FL_Wheel(void) {
        cnt3++;
    test = 0;
    if (test != 0) {
        ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "brake2.c", 472, __extension__ __PRETTY_FUNCTION__); }));
    }
    brake_acc_nodiv_ctrl_B_local_RT_h = brake_acc_nodiv_ctrl_P_RT_X0;
    brake_acc_nodiv_ctrl_B_local_RT4 = brake_acc_nodiv_ctrl_P_RT4_X0;
    brake_acc_nodiv_ctrl_B_local_RT1 = brake_acc_nodiv_ctrl_P_RT1_X0;
    brake_acc_nodiv_ctrl_B_local_RT2 = brake_acc_nodiv_ctrl_P_RT2_X0;
    brake_acc_nodiv_ctrl_B_local_RT3 = brake_acc_nodiv_ctrl_P_RT3_X0;
    int rtb_to_int1;
    rtb_to_int1 = 10;
        brake_acc_nodiv_ctrl_B_local_RT_h = RT_Buffer0;
    brake_acc_nodiv_ctrl_B_local_RT4 = RT4_Buffer0;
    bool rtb_RelationalOperator;
    int rtb_vms;
    int u;
    rtb_vms = 10 + brake_acc_nodiv_ctrl_B_local_RT4;
    u = rtb_vms + 10;
    u = u + rtb_to_int1;
    int positive_UpperSat_local = 100;
    if (u >= positive_UpperSat_local) {
        u = 100;
    } else {
        int positive_LowerSat_local = 5;
        if (u <= positive_LowerSat_local) {
            u = 5;
        }
    }
    int tmp0 = 10;
    int tmp1 = 10 + rtb_vms;
    if (tmp0 > tmp1) {
        rtb_RelationalOperator = true;
    } else {
        rtb_RelationalOperator = false;
    }
    int Threshold_10kmh_Threshold_local = 100;
    if (brake_acc_nodiv_ctrl_B_local_RT4 >= Threshold_10kmh_Threshold_local) {
        if (rtb_RelationalOperator) {
            brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh = 8;
        } else {
            brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh = brake_acc_nodiv_ctrl_B_local_RT3;
        }
    } else {
        brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh = brake_acc_nodiv_ctrl_B_local_RT3;
    }
    int In_BrakePedal;
    if (rtb_RelationalOperator) {
        In_BrakePedal = 15;
    } else {
        In_BrakePedal = 15 + 50;
    }
    int Pedal_map_UpperSat = 50;
    int Pedal_map_LowerSat = 20;
    int tmp;
    if (In_BrakePedal >= Pedal_map_UpperSat) {
        tmp = 50;
    }
    if (In_BrakePedal <= Pedal_map_LowerSat) {
        tmp = 20;
    } else {
        tmp = 15;
    }
    RT14 = brake_acc_nodiv_ctrl_P_Gain1_Gain + tmp;
    RT12 = rtb_to_int1;
}
void *task_FR_Wheel(void *unused)
{
    test = 0;
    if (test != 0) {
        ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "brake2.c", 605, __extension__ __PRETTY_FUNCTION__); }));
    }
    brake_acc_nodiv_ctrl_B_local_RT_h = brake_acc_nodiv_ctrl_P_RT_X0;
    brake_acc_nodiv_ctrl_B_local_RT4 = brake_acc_nodiv_ctrl_P_RT4_X0;
    brake_acc_nodiv_ctrl_B_local_RT1 = brake_acc_nodiv_ctrl_P_RT1_X0;
    brake_acc_nodiv_ctrl_B_local_RT2 = brake_acc_nodiv_ctrl_P_RT2_X0;
    brake_acc_nodiv_ctrl_B_local_RT3 = brake_acc_nodiv_ctrl_P_RT3_X0;
    int rtb_to_int_k;
    brake_acc_nodiv_ctrl_B_local_RT4 = RT4_Buffer0;
 rtb_to_int_k = 10;
    bool rtb_RelationalOperator;
    int rtb_vms = 10 + brake_acc_nodiv_ctrl_B_local_RT4;
    int u = rtb_vms + 10;
    u = u + rtb_to_int_k;
    int positive_UpperSat_local = 100;
    if (u >= positive_UpperSat_local) {
        u = 100;
    } else {
        int positive_LowerSat_local = 5;
        if (u <= positive_LowerSat_local) {
            u = 5;
        }
    }
    int tmp0 = 10;
    int tmp1 = 10 + rtb_vms;
    if (tmp0 > tmp1) {
        rtb_RelationalOperator = true;
    } else {
        rtb_RelationalOperator = false;
    }
    int Threshold_10kmh_Threshold_local = 100;
    if (brake_acc_nodiv_ctrl_B_local_RT4 >= Threshold_10kmh_Threshold_local) {
        if (rtb_RelationalOperator) {
            brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh = 8;
        } else {
            brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh = brake_acc_nodiv_ctrl_B_local_RT2;
        }
    } else {
        brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh = brake_acc_nodiv_ctrl_B_local_RT2;
    }
    brake_acc_nodiv_ctrl_B_local_RT3 = RT3_Buffer0;
    RT11 = rtb_to_int_k;
}
void *task_RL_Wheel(void *unused)
{
    test ++;
    brake_acc_nodiv_ctrl_B_local_RT_h = brake_acc_nodiv_ctrl_P_RT_X0;
    brake_acc_nodiv_ctrl_B_local_RT4 = brake_acc_nodiv_ctrl_P_RT4_X0;
    brake_acc_nodiv_ctrl_B_local_RT1 = brake_acc_nodiv_ctrl_P_RT1_X0;
    brake_acc_nodiv_ctrl_B_local_RT2 = brake_acc_nodiv_ctrl_P_RT2_X0;
    brake_acc_nodiv_ctrl_B_local_RT3 = brake_acc_nodiv_ctrl_P_RT3_X0;
    int rtb_to_int_g;
    brake_acc_nodiv_ctrl_B_local_RT_h = RT_Buffer0;
    brake_acc_nodiv_ctrl_B_local_RT4 = RT4_Buffer0;
 rtb_to_int_g = 10;
    bool rtb_RelationalOperator;
    int rtb_vms;
    int u;
    rtb_vms = 10 + brake_acc_nodiv_ctrl_B_local_RT4;
    u = rtb_vms + 10;
    u = u + rtb_to_int_g;
    int positive_UpperSat_local = 100;
    if (u >= positive_UpperSat_local) {
        u = 100;
    } else {
        int positive_LowerSat_local = 5;
        if (u <= positive_LowerSat_local) {
            u = 5;
        }
    }
    int tmp0 = 10;
    int tmp1 = 10 + rtb_vms;
    if (tmp0 > tmp1) {
        rtb_RelationalOperator = true;
    } else {
        rtb_RelationalOperator = false;
    }
    int Threshold_10kmh_Threshold_local = 100;
    if (brake_acc_nodiv_ctrl_B_local_RT4 >= Threshold_10kmh_Threshold_local) {
        if (rtb_RelationalOperator) {
            brake_acc_nodiv_ctrl_B_local_ABS_RL_Wheel_Threshold_10kmh = 8;
        } else {
            brake_acc_nodiv_ctrl_B_local_ABS_RL_Wheel_Threshold_10kmh = brake_acc_nodiv_ctrl_B_local_RT1;
        }
    } else {
        brake_acc_nodiv_ctrl_B_local_ABS_RL_Wheel_Threshold_10kmh = brake_acc_nodiv_ctrl_B_local_RT1;
    }
    brake_acc_nodiv_ctrl_B_local_RT2 = RT2_Buffer0;
    RT10 = rtb_to_int_g;
}
int main(void)
{
    test = 0;
    __CPROVER_ASYNC_1:
    task_RR_Wheel();
    return 0;
}
