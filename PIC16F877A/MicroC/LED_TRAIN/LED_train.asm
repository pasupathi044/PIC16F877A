
_main:

;LED_train.c,1 :: 		void main() {
;LED_train.c,2 :: 		unsigned char i=0;
	CLRF       main_i_L0+0
;LED_train.c,3 :: 		trisd=0x00;
	CLRF       TRISD+0
;LED_train.c,4 :: 		portd=0x00;
	CLRF       PORTD+0
;LED_train.c,6 :: 		for(i=0;i<=7;i++){
	CLRF       main_i_L0+0
L_main0:
	MOVF       main_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_main1
;LED_train.c,7 :: 		portd=0x80 >>i;
	MOVF       main_i_L0+0, 0
	MOVWF      R1+0
	MOVLW      128
	MOVWF      R0+0
	MOVF       R1+0, 0
L__main6:
	BTFSC      STATUS+0, 2
	GOTO       L__main7
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__main6
L__main7:
	MOVF       R0+0, 0
	MOVWF      PORTD+0
;LED_train.c,8 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;LED_train.c,9 :: 		if(portd==0x01){
	MOVF       PORTD+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;LED_train.c,10 :: 		portd=0x80;
	MOVLW      128
	MOVWF      PORTD+0
;LED_train.c,11 :: 		i=0;
	CLRF       main_i_L0+0
;LED_train.c,12 :: 		}
L_main4:
;LED_train.c,6 :: 		for(i=0;i<=7;i++){
	INCF       main_i_L0+0, 1
;LED_train.c,13 :: 		}
	GOTO       L_main0
L_main1:
;LED_train.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
