
_main:

;7 Seg 4 Digit.c,3 :: 		void main(){
;7 Seg 4 Digit.c,7 :: 		TRISB=0x00;//out
	CLRF       TRISB+0
;7 Seg 4 Digit.c,8 :: 		TRISC=0x00;
	CLRF       TRISC+0
;7 Seg 4 Digit.c,9 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;7 Seg 4 Digit.c,10 :: 		portc=0x00;
	CLRF       PORTC+0
;7 Seg 4 Digit.c,12 :: 		for(i=0;i<=9999;i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main0:
	MOVLW      128
	XORLW      39
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       main_i_L0+0, 0
	SUBLW      15
L__main11:
	BTFSS      STATUS+0, 0
	GOTO       L_main1
;7 Seg 4 Digit.c,13 :: 		digit[0]=i/1000;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_digit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_digit_L0+1
;7 Seg 4 Digit.c,14 :: 		digit[1]=(i/100)%10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_digit_L0+2
	MOVF       R0+1, 0
	MOVWF      main_digit_L0+3
;7 Seg 4 Digit.c,15 :: 		digit[2]=(i/10)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_digit_L0+4
	MOVF       R0+1, 0
	MOVWF      main_digit_L0+5
;7 Seg 4 Digit.c,16 :: 		digit[3]=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_digit_L0+6
	MOVF       R0+1, 0
	MOVWF      main_digit_L0+7
;7 Seg 4 Digit.c,18 :: 		for(j=0;j<50;j++){
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main3:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      50
	SUBWF      main_j_L0+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;7 Seg 4 Digit.c,19 :: 		portc.f0=0xff;
	BSF        PORTC+0, 0
;7 Seg 4 Digit.c,20 :: 		portb=digits[digit[0]];
	MOVF       main_digit_L0+0, 0
	ADDLW      _digits+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7 Seg 4 Digit.c,21 :: 		delay_ms(delay);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;7 Seg 4 Digit.c,23 :: 		portc.f0=0x00;
	BCF        PORTC+0, 0
;7 Seg 4 Digit.c,24 :: 		portc.f1=0xff;
	BSF        PORTC+0, 1
;7 Seg 4 Digit.c,25 :: 		portb=digits[digit[1]];
	MOVF       main_digit_L0+2, 0
	ADDLW      _digits+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7 Seg 4 Digit.c,26 :: 		delay_ms(delay);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;7 Seg 4 Digit.c,28 :: 		portc.f1=0x00;
	BCF        PORTC+0, 1
;7 Seg 4 Digit.c,29 :: 		portc.f2=0xff;
	BSF        PORTC+0, 2
;7 Seg 4 Digit.c,30 :: 		portb=digits[digit[2]];
	MOVF       main_digit_L0+4, 0
	ADDLW      _digits+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7 Seg 4 Digit.c,31 :: 		delay_ms(delay);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;7 Seg 4 Digit.c,33 :: 		portc.f2=0x00;
	BCF        PORTC+0, 2
;7 Seg 4 Digit.c,34 :: 		portc.f3=0xff;
	BSF        PORTC+0, 3
;7 Seg 4 Digit.c,35 :: 		portb=digits[digit[3]];
	MOVF       main_digit_L0+6, 0
	ADDLW      _digits+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7 Seg 4 Digit.c,36 :: 		delay_ms(delay);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;7 Seg 4 Digit.c,37 :: 		portc.f3=0x00;
	BCF        PORTC+0, 3
;7 Seg 4 Digit.c,18 :: 		for(j=0;j<50;j++){
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;7 Seg 4 Digit.c,38 :: 		}
	GOTO       L_main3
L_main4:
;7 Seg 4 Digit.c,12 :: 		for(i=0;i<=9999;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;7 Seg 4 Digit.c,39 :: 		}
	GOTO       L_main0
L_main1:
;7 Seg 4 Digit.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
