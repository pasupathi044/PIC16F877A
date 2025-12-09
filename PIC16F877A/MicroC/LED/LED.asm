
_main:

;LED.c,1 :: 		void main() {
;LED.c,2 :: 		TRISD = 0x00; // 0000 0000 all 8 are output now
	CLRF       TRISD+0
;LED.c,3 :: 		while(1){
L_main0:
;LED.c,4 :: 		PORTD = 0xff; // 1111 1111 all the portD pin o/p 5v
	MOVLW      255
	MOVWF      PORTD+0
;LED.c,5 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;LED.c,6 :: 		PORTD = 0x00; // 0000 0000 all set to gnd
	CLRF       PORTD+0
;LED.c,7 :: 		delay_ms(1000);
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
;LED.c,8 :: 		}
	GOTO       L_main0
;LED.c,9 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
