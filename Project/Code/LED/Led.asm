
_main:

;Led.c,1 :: 		void main() {
;Led.c,2 :: 		TRISB=0x00;  //b as output
	CLRF       TRISB+0
;Led.c,3 :: 		PORTB=0x00; //bo off
	CLRF       PORTB+0
;Led.c,4 :: 		while(1){
L_main0:
;Led.c,5 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;Led.c,6 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;Led.c,7 :: 		portb=0x00;
	CLRF       PORTB+0
;Led.c,8 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Led.c,9 :: 		}
	GOTO       L_main0
;Led.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
