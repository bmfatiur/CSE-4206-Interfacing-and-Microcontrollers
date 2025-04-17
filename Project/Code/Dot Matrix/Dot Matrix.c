void main() {
    const int delay=5;
    
    TRISB=0x00;
    TRISD=0x00;
    
    while(1){
        portb=0x00;
        portd=0x80;
        delay_ms(delay);
        
        portb=0xff;
        portd=0x40;
        delay_ms(delay);
        
        portb=0xff;
        portd=0x20;
        delay_ms(delay);
        
        portb=0x18;
        portd=0x10;
        delay_ms(delay);
        
        portb=0x18;
        portd=0x08;
        delay_ms(delay);
        
        portb=0xff;
        portd=0x04;
        delay_ms(delay);
        
        portb=0xff;
        portd=0x02;
        delay_ms(delay);
        
        portb=0x00;
        portd=0x01;
        delay_ms(delay);
    }
}