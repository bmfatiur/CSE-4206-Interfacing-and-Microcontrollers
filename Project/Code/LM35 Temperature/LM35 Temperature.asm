
_main:

;LM35 Temperature.c,27 :: 		void main() {
;LM35 Temperature.c,28 :: 		TRISB=0x00;
	CLRF       TRISB+0
;LM35 Temperature.c,29 :: 		TRISA=0xff;
	MOVLW      255
	MOVWF      TRISA+0
;LM35 Temperature.c,30 :: 		adcon1=0x80;
	MOVLW      128
	MOVWF      ADCON1+0
;LM35 Temperature.c,31 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;LM35 Temperature.c,32 :: 		ADC_init();
	CALL       _ADC_Init+0
;LM35 Temperature.c,34 :: 		Lcd_cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LM35 Temperature.c,35 :: 		Lcd_cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LM35 Temperature.c,37 :: 		Lcd_out(1,1,"Temp:  ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_LM35_32Temperature+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LM35 Temperature.c,38 :: 		while(1) {
L_main0:
;LM35 Temperature.c,39 :: 		unsigned int temp1=ADC_read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
;LM35 Temperature.c,40 :: 		temp=temp1*4.88;
	CALL       _word2double+0
	MOVLW      246
	MOVWF      R4+0
	MOVLW      40
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
	MOVF       R0+1, 0
	MOVWF      _temp+1
	MOVF       R0+2, 0
	MOVWF      _temp+2
	MOVF       R0+3, 0
	MOVWF      _temp+3
;LM35 Temperature.c,41 :: 		temp=temp/10;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
	MOVF       R0+1, 0
	MOVWF      _temp+1
	MOVF       R0+2, 0
	MOVWF      _temp+2
	MOVF       R0+3, 0
	MOVWF      _temp+3
;LM35 Temperature.c,42 :: 		floattostr(temp,t);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _t+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;LM35 Temperature.c,43 :: 		lcd_out(1,6,t);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _t+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LM35 Temperature.c,44 :: 		lcd_chr(1,15,223);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;LM35 Temperature.c,45 :: 		lcd_out_cp("C");
	MOVLW      ?lstr2_LM35_32Temperature+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;LM35 Temperature.c,47 :: 		}
	GOTO       L_main0
;LM35 Temperature.c,49 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
