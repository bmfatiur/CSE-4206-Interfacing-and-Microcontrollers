
_main:

;7 Seg with button.c,3 :: 		void main() {
;7 Seg with button.c,4 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;7 Seg with button.c,6 :: 		TRISB=0x00; //output
	CLRF       TRISB+0
;7 Seg with button.c,7 :: 		TRISC=0xff; //input
	MOVLW      255
	MOVWF      TRISC+0
;7 Seg with button.c,8 :: 		portb=0xC0;
	MOVLW      192
	MOVWF      PORTB+0
;7 Seg with button.c,10 :: 		while(1){
L_main0:
;7 Seg with button.c,12 :: 		if(portc.f0==0xff){
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;7 Seg with button.c,13 :: 		delay_ms(delay);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;7 Seg with button.c,14 :: 		if(portc.f0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_main4
;7 Seg with button.c,15 :: 		if(i>0) i--;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
L_main5:
;7 Seg with button.c,16 :: 		portb=digits[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _digits+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7 Seg with button.c,17 :: 		}
L_main4:
;7 Seg with button.c,18 :: 		}
	GOTO       L_main6
L_main2:
;7 Seg with button.c,20 :: 		else if(portc.f1==0xff){
	BTFSS      PORTC+0, 1
	GOTO       L_main7
;7 Seg with button.c,21 :: 		delay_ms(delay);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
;7 Seg with button.c,22 :: 		if(portc.f1==1){
	BTFSS      PORTC+0, 1
	GOTO       L_main9
;7 Seg with button.c,23 :: 		if(i<9) i++;
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
L_main10:
;7 Seg with button.c,24 :: 		portb=digits[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _digits+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7 Seg with button.c,25 :: 		}
L_main9:
;7 Seg with button.c,26 :: 		}
L_main7:
L_main6:
;7 Seg with button.c,27 :: 		}
	GOTO       L_main0
;7 Seg with button.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
