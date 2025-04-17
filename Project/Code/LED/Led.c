void main() {
     TRISB=0x00;  //b as output
     PORTB=0x00; //bo off
     while(1){
         portb=0xff;
         delay_ms(200);
         portb=0x00;
         delay_ms(200);
     }
}