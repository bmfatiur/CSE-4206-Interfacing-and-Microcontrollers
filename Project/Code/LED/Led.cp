#line 1 "G:/Document/4-2/CSE 4206/Project/Code/LED/Led.c"
void main() {
 TRISB=0x00;
 PORTB=0x00;
 while(1){
 portb=0xff;
 delay_ms(200);
 portb=0x00;
 delay_ms(200);
 }
}
