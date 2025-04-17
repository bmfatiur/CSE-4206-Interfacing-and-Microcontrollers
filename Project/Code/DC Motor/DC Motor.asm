
_main:

;DC Motor.c,1 :: 		void main() {
;DC Motor.c,2 :: 		short duty=0;
	CLRF       main_duty_L0+0
;DC Motor.c,3 :: 		TRISB=0x00;
	CLRF       TRISB+0
;DC Motor.c,4 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;DC Motor.c,7 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;DC Motor.c,8 :: 		portb.f1=0x00;
	BCF        PORTB+0, 1
;DC Motor.c,10 :: 		PWM2_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;DC Motor.c,11 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;DC Motor.c,12 :: 		PWM2_Set_Duty(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;DC Motor.c,14 :: 		while(1){
L_main0:
;DC Motor.c,15 :: 		if(portd.f0==0xff && duty<246){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      246
	SUBWF      main_duty_L0+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main20:
;DC Motor.c,16 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;DC Motor.c,17 :: 		if(portd.f0==0xff && duty<246){
	BTFSS      PORTD+0, 0
	GOTO       L_main8
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      246
	SUBWF      main_duty_L0+0, 0
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
L__main19:
;DC Motor.c,18 :: 		duty=duty+10;
	MOVLW      10
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;DC Motor.c,19 :: 		PWM2_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;DC Motor.c,20 :: 		}
L_main8:
;DC Motor.c,21 :: 		}
L_main4:
;DC Motor.c,22 :: 		if(portd.f1==0xff && duty>9){
	BTFSS      PORTD+0, 1
	GOTO       L_main11
	MOVLW      128
	XORLW      9
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main11
L__main18:
;DC Motor.c,23 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
;DC Motor.c,24 :: 		if(portd.f1==0xff && duty>9){
	BTFSS      PORTD+0, 1
	GOTO       L_main15
	MOVLW      128
	XORLW      9
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main15
L__main17:
;DC Motor.c,25 :: 		duty=duty-10;
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;DC Motor.c,26 :: 		PWM2_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;DC Motor.c,27 :: 		}
L_main15:
;DC Motor.c,28 :: 		}
L_main11:
;DC Motor.c,29 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;DC Motor.c,30 :: 		}
	GOTO       L_main0
;DC Motor.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
