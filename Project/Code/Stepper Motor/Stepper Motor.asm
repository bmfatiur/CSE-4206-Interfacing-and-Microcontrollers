
_main:

;Stepper Motor.c,1 :: 		void main() {
;Stepper Motor.c,3 :: 		TRISD=0x00;
	CLRF       TRISD+0
;Stepper Motor.c,4 :: 		PORTD=0xff;
	MOVLW      255
	MOVWF      PORTD+0
;Stepper Motor.c,6 :: 		while(1){
L_main0:
;Stepper Motor.c,7 :: 		portd=0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;Stepper Motor.c,8 :: 		delay_ms(delay);
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
;Stepper Motor.c,9 :: 		portd=0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;Stepper Motor.c,10 :: 		delay_ms(delay);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Stepper Motor.c,11 :: 		portd=0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;Stepper Motor.c,12 :: 		delay_ms(delay);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Stepper Motor.c,13 :: 		portd=0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;Stepper Motor.c,14 :: 		delay_ms(delay);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Stepper Motor.c,15 :: 		}
	GOTO       L_main0
;Stepper Motor.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
