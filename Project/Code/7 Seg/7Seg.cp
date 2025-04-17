#line 1 "G:/Document/4-2/CSE 4206/Project/Code/7 Seg/7Seg.c"
char digit[]={0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
void main() {
 int i=0;
 TRISB=0x00;
 portb=0xff;
 while(i<10){
 portb=digit[i];
 delay_ms(1000);
 i++;
 if(i>9) i=0;
 }

}
