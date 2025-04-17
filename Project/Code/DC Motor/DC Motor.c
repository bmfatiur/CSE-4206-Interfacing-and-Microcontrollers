void main() {
    short duty=0;
    TRISB=0x00;
    TRISD=0xff;
    
    //anti clock
    portb.f0=0xff;
    portb.f1=0x00;
    
    PWM2_Init(1000);
    PWM2_Start();
    PWM2_Set_Duty(duty);

    while(1){
        if(portd.f0==0xff && duty<246){
            delay_ms(100);
            if(portd.f0==0xff && duty<246){
                duty=duty+10;
                PWM2_Set_Duty(duty);
            }
        }
        if(portd.f1==0xff && duty>9){
            delay_ms(100);
            if(portd.f1==0xff && duty>9){
                duty=duty-10;
                PWM2_Set_Duty(duty);
            }
        }
        delay_ms(10);
    }
}