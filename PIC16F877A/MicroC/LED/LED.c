void main() {
      TRISD = 0x00; // 0000 0000 all 8 are output now
      while(1){
      PORTD = 0xff; // 1111 1111 all the portD pin o/p 5v
      delay_ms(1000);
      PORTD = 0xab; // 1010 1010 all set to gnd
      delay_ms(1000);
      }
}
