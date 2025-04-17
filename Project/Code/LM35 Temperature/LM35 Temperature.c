  //Title: LCD interfacing with PIC16f877a

  //LCD module connections

  sbit LCD_RS at RB2_bit; //LCD reset
  sbit LCD_EN at RB3_bit; //LCD enable

  sbit LCD_D4 at RB4_bit; //Data
  sbit LCD_D5 at RB5_bit; //Data
  sbit LCD_D6 at RB6_bit; //Data
  sbit LCD_D7 at RB7_bit; //Data


  //LCD Pin Direction

  sbit LCD_RS_Direction at TRISB2_bit;
  sbit LCD_EN_Direction at TRISB3_bit;
  sbit LCD_D4_Direction at TRISB4_bit;
  sbit LCD_D5_Direction at TRISB5_bit;
  sbit LCD_D6_Direction at TRISB6_bit;
  sbit LCD_D7_Direction at TRISB7_bit;

  int i;
  float temp,display;
  char t[16];

void main() {
  TRISB=0x00;
  TRISA=0xff;
  adcon1=0x80;
  Lcd_Init();
  ADC_init();

  Lcd_cmd(_LCD_CLEAR);
  Lcd_cmd(_LCD_CURSOR_OFF);

  Lcd_out(1,1,"Temp:  ");
  while(1) {
      unsigned int temp1=ADC_read(3);
      temp=temp1*4.88;
      temp=temp/10;
      floattostr(temp,t);
      lcd_out(1,6,t);
      lcd_chr(1,15,223);
      lcd_out_cp("C");

      }

  }