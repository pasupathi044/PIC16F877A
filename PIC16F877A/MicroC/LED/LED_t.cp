#line 1 "D:/PIC16F877A/MicroC/LED_t.c"
void main() {
 TRISD = 0x00;
 while(1){
 PORTD = 0xff;
 delay_ms(1000);
 PORTD = 0xab;
 delay_ms(1000);
 }
}
