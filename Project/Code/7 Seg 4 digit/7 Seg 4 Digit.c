char digits[]={0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};

void main(){

    const int delay=5;
    int i, j, digit[4];
    TRISB=0x00;//out
    TRISC=0x00;
    portb=0xff;
    portc=0x00;

    for(i=0;i<=9999;i++){
        digit[0]=i/1000;
        digit[1]=(i/100)%10;
        digit[2]=(i/10)%10;
        digit[3]=i%10;

        for(j=0;j<50;j++){
            portc.f0=0xff;
            portb=digits[digit[0]];
            delay_ms(delay);

            portc.f0=0x00;
            portc.f1=0xff;
            portb=digits[digit[1]];
            delay_ms(delay);

            portc.f1=0x00;
            portc.f2=0xff;
            portb=digits[digit[2]];
            delay_ms(delay);

            portc.f2=0x00;
            portc.f3=0xff;
            portb=digits[digit[3]];
            delay_ms(delay);
            portc.f3=0x00;
        }
    }
}