#line 1 "G:/Document/4-2/CSE 4206/Project/Code/Stepper Motor/Stepper Motor.c"
void main() {
 const int delay=1000;
 TRISD=0x00;
 PORTD=0xff;

 while(1){
 portd=0b00001001;
 delay_ms(delay);
 portd=0b00001100;
 delay_ms(delay);
 portd=0b00000110;
 delay_ms(delay);
 portd=0b00000011;
 delay_ms(delay);
 }
}
