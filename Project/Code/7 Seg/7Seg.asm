
_main:

;7Seg.c,2 :: 		void main() {
;7Seg.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;7Seg.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;7Seg.c,5 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;7Seg.c,6 :: 		while(i<10){
L_main0:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVLW      10
	SUBWF      main_i_L0+0, 0
L__main5:
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;7Seg.c,7 :: 		portb=digit[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _digit+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7Seg.c,8 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;7Seg.c,9 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;7Seg.c,10 :: 		if(i>9) i=0;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVF       main_i_L0+0, 0
	SUBLW      9
L__main6:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main3:
;7Seg.c,11 :: 		}
	GOTO       L_main0
L_main1:
;7Seg.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
