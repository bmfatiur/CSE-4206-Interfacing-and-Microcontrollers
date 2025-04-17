#line 1 "G:/Document/4-2/CSE 4206/Project/Code/relay/relay.c"
void main() {
 TRISB=0x00;
 portb=0x00;
 while(1)
 {
 PORTB.F0=1;
 delay_ms(1000);
 PORTB.F0=0;
 delay_ms(1000);
 }
}
