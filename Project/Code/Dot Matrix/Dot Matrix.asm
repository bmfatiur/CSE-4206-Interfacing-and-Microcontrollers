
_main:

;Dot Matrix.c,1 :: 		void main() {
;Dot Matrix.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;Dot Matrix.c,5 :: 		TRISD=0x00;
	CLRF       TRISD+0
;Dot Matrix.c,7 :: 		while(1){
L_main0:
;Dot Matrix.c,8 :: 		portb=0x00;
	CLRF       PORTB+0
;Dot Matrix.c,9 :: 		portd=0x80;
	MOVLW      128
	MOVWF      PORTD+0
;Dot Matrix.c,10 :: 		delay_ms(delay);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;Dot Matrix.c,12 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;Dot Matrix.c,13 :: 		portd=0x40;
	MOVLW      64
	MOVWF      PORTD+0
;Dot Matrix.c,14 :: 		delay_ms(delay);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;Dot Matrix.c,16 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;Dot Matrix.c,17 :: 		portd=0x20;
	MOVLW      32
	MOVWF      PORTD+0
;Dot Matrix.c,18 :: 		delay_ms(delay);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;Dot Matrix.c,20 :: 		portb=0x18;
	MOVLW      24
	MOVWF      PORTB+0
;Dot Matrix.c,21 :: 		portd=0x10;
	MOVLW      16
	MOVWF      PORTD+0
;Dot Matrix.c,22 :: 		delay_ms(delay);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;Dot Matrix.c,24 :: 		portb=0x18;
	MOVLW      24
	MOVWF      PORTB+0
;Dot Matrix.c,25 :: 		portd=0x08;
	MOVLW      8
	MOVWF      PORTD+0
;Dot Matrix.c,26 :: 		delay_ms(delay);
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
;Dot Matrix.c,28 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;Dot Matrix.c,29 :: 		portd=0x04;
	MOVLW      4
	MOVWF      PORTD+0
;Dot Matrix.c,30 :: 		delay_ms(delay);
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
;Dot Matrix.c,32 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;Dot Matrix.c,33 :: 		portd=0x02;
	MOVLW      2
	MOVWF      PORTD+0
;Dot Matrix.c,34 :: 		delay_ms(delay);
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
;Dot Matrix.c,36 :: 		portb=0x00;
	CLRF       PORTB+0
;Dot Matrix.c,37 :: 		portd=0x01;
	MOVLW      1
	MOVWF      PORTD+0
;Dot Matrix.c,38 :: 		delay_ms(delay);
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
;Dot Matrix.c,39 :: 		}
	GOTO       L_main0
;Dot Matrix.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
