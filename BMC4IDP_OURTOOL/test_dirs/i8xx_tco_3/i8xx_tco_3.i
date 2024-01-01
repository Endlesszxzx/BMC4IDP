
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
int cnt1, cnt2, cnt3, cnt4, cnt5, cnt6, cnt7, cnt8;
void closer1();
void closer2();
void closer3();
void writer1();
void writer2();
void writer3();
void closer1(void) {
    __CPROVER_ASYNC_1:
    writer1();
        tco_write_buf = 'V';
        do { if (1) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        tco_expect_close = 42;
        cnt1++;
    return NULL;
}
void closer2(void ) {
        tco_write_buf = 'V';
        do { if (1) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        tco_expect_close = 42;
        cnt2++;
    return NULL;
}
void closer3(void) {
        tco_write_buf = 'V';
        do { if (1) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        tco_expect_close = 42;
        do { if (tco_expect_close != 42) { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "i8xx_tco_3.c", 748, __extension__ __PRETTY_FUNCTION__); })); } else { } do { timer_alive = 0; } while (0); tco_expect_close = 0; } while (0);
        cnt3++;
    return NULL;
}
void writer1(void) {
    __CPROVER_ASYNC_1:
    writer2();
        do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        cnt4++;
    return NULL;
}
void writer2(void ) {
    __CPROVER_ASYNC_1:
    writer3();
        do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        cnt5++;
    return NULL;
}
void writer3(void ) {
        do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        cnt6++;
    return NULL;
}
void *writer4(void *unused) {
    while(cnt8<20) {
        do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
        do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
    }
    return NULL;
}
void *writer5(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer6(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer7(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer8(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer9(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer10(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer11(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer12(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer13(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer14(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer15(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer16(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer17(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer18(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer19(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer20(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer21(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer22(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer23(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer24(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer25(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer26(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer27(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer28(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer29(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
void *writer30(void *unused) {
  do { if (0) { if (!nowayout) { tco_expect_close = 0; if (tco_write_buf == 'V') { tco_expect_close = 42; } } } do { do { tco1_rld = 0x01; } while (0); } while (0); } while (0);
  return NULL;
}
int main(int argc, char *argv[]) {
  tco_expect_close = 0;
  pthread_t t1;
  pthread_t t2;
    __CPROVER_ASYNC_1:
    closer1();
    __CPROVER_ASYNC_2:
    closer2();
    __CPROVER_ASYNC_3:
    closer3();
  pthread_exit(NULL);
}
