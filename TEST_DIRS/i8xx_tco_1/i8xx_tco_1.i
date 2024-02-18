
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

unsigned int ACPIBASE;
_Bool tco_lock;
unsigned long timer_alive;
char tco_expect_close;
char tco_write_buf;
char tco1_rld;
_Bool tco1_cnt_b0;
_Bool tco1_cnt_b1;
_Bool tco1_cnt_b2;
_Bool tco1_cnt_b3;
_Bool tco1_cnt_b4;
_Bool tco1_cnt_b5;
_Bool tco1_cnt_b6;
_Bool tco1_cnt_b7;
int heartbeat = 30;
int nowayout = 0;
unsigned char seconds_to_ticks(int seconds)
{
 return (seconds * 10) / 6;
}
int tco_timer_set_heartbeat (int t)
{
 unsigned char val;
 unsigned char tmrval;
 tmrval = seconds_to_ticks(t);
 if (tmrval > 0x3f || tmrval < 0x04)
  return -22;
 do { while (tco_lock) { } } while (0);
 val = 0;
 val &= 0xc0;
 val |= tmrval;
 val = 0;
 do { tco_lock = 0; } while (0);
 if ((val & 0x3f) != tmrval)
  return -22;
 heartbeat = t;
 return 0;
}
static int tco_timer_get_timeleft (int *time_left)
{
 unsigned char val;
 do { while (tco_lock) { } } while (0);
 val = 0;
 val &= 0x3f;
 do { tco_lock = 0; } while (0);
 *time_left = (int)((val * 6) / 10);
 return 0;
}
int cnt1, cnt2, cnt3;
void closer1();
void closer2();
void writer1();
void closer2(void ) {
    while(cnt1<5) {
        tco_write_buf = 'V';
        do { if (1) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        tco_expect_close = 42;
        do { if (tco_expect_close != 42) { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "i8xx_tco_1.c", 721, __extension__ __PRETTY_FUNCTION__); })); } else { } do { timer_alive = 0; } while (0); tco_expect_close = 0; } while (0);
        cnt1++;
    }
    return 0;
}
void closer1(void ) {
    while(cnt2<5) {
        tco_write_buf = 'V';
        do { if (1) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        tco_expect_close = 42;
        do { if (tco_expect_close != 42) { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "i8xx_tco_1.c", 732, __extension__ __PRETTY_FUNCTION__); })); } else { } do { timer_alive = 0; } while (0); tco_expect_close = 0; } while (0);
        cnt2++;
    }
    return 0;
}
void writer1(void ) {
    __CPROVER_ASYNC_1:
    closer1();
    __CPROVER_ASYNC_2:
    closer2();
    while(cnt3<5) {
        do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        cnt3++;
    }
    return 0;
}
int main(int argc, char *argv[]) {
  tco_expect_close = 0;
    __CPROVER_ASYNC_1:
    writer1();
}
