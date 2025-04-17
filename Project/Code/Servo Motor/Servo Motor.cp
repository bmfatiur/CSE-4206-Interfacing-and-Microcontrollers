#line 1 "G:/Document/4-2/CSE 4206/Project/Code/Servo Motor/Servo Motor.c"
void servoRotate0(){
 int i;
 for(i=0;i<50;i++){
 portb.f0=1;
 delay_us(800);
 portb.f0=0;
 delay_us(19200);
 }
}
void servoRotate90(){
 int i;
 for(i=0;i<50;i++){
 portb.f0=1;
 delay_us(1500);
 portb.f0=0;
 delay_us(18500);
 }
}
void servoRotate180(){
 int i;
 for(i=0;i<50;i++){
 portb.f0=1;
 delay_us(2200);
 portb.f0=0;
 delay_us(17800);
 }
}

void main() {
 TRISB=0x00;
 PORTB=0x00;
 while(1){
 servoRotate0();
 delay_ms(5000);
 servoRotate90();
 delay_ms(5000);
 servoRotate180();
 delay_ms(5000);
 }
}
