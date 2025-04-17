#line 1 "G:/Document/4-2/CSE 4206/Project/Code/7 Seg with Button/7 Seg with button.c"
char digits[]={0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};

void main() {
 int i=0;
 const int delay=150;
 TRISB=0x00;
 TRISC=0xff;
 portb=0xC0;

 while(1){

 if(portc.f0==0xff){
 delay_ms(delay);
 if(portc.f0==1){
 if(i>0) i--;
 portb=digits[i];
 }
 }

 else if(portc.f1==0xff){
 delay_ms(delay);
 if(portc.f1==1){
 if(i<9) i++;
 portb=digits[i];
 }
 }
 }
}
