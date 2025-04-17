
_servoRotate0:

;Servo Motor.c,1 :: 		void servoRotate0(){
;Servo Motor.c,3 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate00:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate021
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate021:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate01
;Servo Motor.c,4 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;Servo Motor.c,5 :: 		delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_servoRotate03:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate03
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate03
	NOP
;Servo Motor.c,6 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;Servo Motor.c,7 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_servoRotate04:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate04
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate04
	NOP
	NOP
;Servo Motor.c,3 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;Servo Motor.c,8 :: 		}
	GOTO       L_servoRotate00
L_servoRotate01:
;Servo Motor.c,9 :: 		}
L_end_servoRotate0:
	RETURN
; end of _servoRotate0

_servoRotate90:

;Servo Motor.c,10 :: 		void servoRotate90(){
;Servo Motor.c,12 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate905:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate9023
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate9023:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate906
;Servo Motor.c,13 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;Servo Motor.c,14 :: 		delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_servoRotate908:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate908
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate908
	NOP
;Servo Motor.c,15 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;Servo Motor.c,16 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_servoRotate909:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate909
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate909
	NOP
	NOP
;Servo Motor.c,12 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;Servo Motor.c,17 :: 		}
	GOTO       L_servoRotate905
L_servoRotate906:
;Servo Motor.c,18 :: 		}
L_end_servoRotate90:
	RETURN
; end of _servoRotate90

_servoRotate180:

;Servo Motor.c,19 :: 		void servoRotate180(){
;Servo Motor.c,21 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate18010:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate18025
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate18025:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate18011
;Servo Motor.c,22 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;Servo Motor.c,23 :: 		delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_servoRotate18013:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate18013
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate18013
	NOP
	NOP
;Servo Motor.c,24 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;Servo Motor.c,25 :: 		delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_servoRotate18014:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate18014
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate18014
	NOP
;Servo Motor.c,21 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;Servo Motor.c,26 :: 		}
	GOTO       L_servoRotate18010
L_servoRotate18011:
;Servo Motor.c,27 :: 		}
L_end_servoRotate180:
	RETURN
; end of _servoRotate180

_main:

;Servo Motor.c,29 :: 		void main() {
;Servo Motor.c,30 :: 		TRISB=0x00;
	CLRF       TRISB+0
;Servo Motor.c,31 :: 		PORTB=0x00;
	CLRF       PORTB+0
;Servo Motor.c,32 :: 		while(1){
L_main15:
;Servo Motor.c,33 :: 		servoRotate0();
	CALL       _servoRotate0+0
;Servo Motor.c,34 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;Servo Motor.c,35 :: 		servoRotate90();
	CALL       _servoRotate90+0
;Servo Motor.c,36 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;Servo Motor.c,37 :: 		servoRotate180();
	CALL       _servoRotate180+0
;Servo Motor.c,38 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;Servo Motor.c,39 :: 		}
	GOTO       L_main15
;Servo Motor.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
