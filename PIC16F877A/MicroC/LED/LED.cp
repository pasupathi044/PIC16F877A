#line 1 "D:/PIC16F877A/MicroC/LED.c"
void main() {
 TRISD = 0x00;
 while(1){
 PORTD = 0xff;
 delay_ms(1000);
 PORTD = 0x00;
 delay_ms(1000);
 }
}
