void main() {
  unsigned char i=0;
  trisd=0x00;
  portd=0x00;
  
  for(i=0;i<=7;i++){
   portd=0x80 >>i;
   delay_ms(1000);
   if(portd==0x01){
      portd=0x80;
      i=0;
   }
  }
}