
_key5_init:

;lib.h,41 :: 		void key5_init()               // TRIS = 1  ===> INPUT DATA
;lib.h,43 :: 		TRISC.B0 = 1;
	BSF        TRISC+0, 0
;lib.h,44 :: 		TRISC.B1 = 1;
	BSF        TRISC+0, 1
;lib.h,45 :: 		TRISC.B2 = 1;
	BSF        TRISC+0, 2
;lib.h,46 :: 		TRISC.B3 = 1;
	BSF        TRISC+0, 3
;lib.h,47 :: 		TRISC.B4 = 0;
	BCF        TRISC+0, 4
;lib.h,48 :: 		TRISC.B5 = 0;
	BCF        TRISC+0, 5
;lib.h,49 :: 		TRISC.B6 = 0,
	BCF        TRISC+0, 6
;lib.h,50 :: 		TRISC.B7 = 0;
	BCF        TRISC+0, 7
;lib.h,52 :: 		}
L_end_key5_init:
	RETURN
; end of _key5_init

_key5_press:

;lib.h,54 :: 		char key5_press()     // Scan press key and return it
;lib.h,56 :: 		char key = '\0';
	CLRF       key5_press_key_L0+0
;lib.h,58 :: 		COL1 =1;
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
;lib.h,59 :: 		if(ROW1==1) key= '7';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_key5_press0
	MOVLW      55
	MOVWF      key5_press_key_L0+0
L_key5_press0:
;lib.h,60 :: 		if(ROW2==1) key= '4';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_key5_press1
	MOVLW      52
	MOVWF      key5_press_key_L0+0
L_key5_press1:
;lib.h,61 :: 		if(ROW3==1) key= '1';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_key5_press2
	MOVLW      49
	MOVWF      key5_press_key_L0+0
L_key5_press2:
;lib.h,62 :: 		if(ROW4==1) key= 'a';
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_key5_press3
	MOVLW      97
	MOVWF      key5_press_key_L0+0
L_key5_press3:
;lib.h,63 :: 		COL1=0;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
;lib.h,65 :: 		COL2 =1;
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
;lib.h,66 :: 		if(ROW1==1) key= '8';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_key5_press4
	MOVLW      56
	MOVWF      key5_press_key_L0+0
L_key5_press4:
;lib.h,67 :: 		if(ROW2==1) key= '5';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_key5_press5
	MOVLW      53
	MOVWF      key5_press_key_L0+0
L_key5_press5:
;lib.h,68 :: 		if(ROW3==1) key= '2';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_key5_press6
	MOVLW      50
	MOVWF      key5_press_key_L0+0
L_key5_press6:
;lib.h,69 :: 		if(ROW4==1) key= '0';
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_key5_press7
	MOVLW      48
	MOVWF      key5_press_key_L0+0
L_key5_press7:
;lib.h,70 :: 		COL2=0;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;lib.h,72 :: 		COL3 =1;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
;lib.h,73 :: 		if(ROW1==1) key= '9';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_key5_press8
	MOVLW      57
	MOVWF      key5_press_key_L0+0
L_key5_press8:
;lib.h,74 :: 		if(ROW2==1) key= '6';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_key5_press9
	MOVLW      54
	MOVWF      key5_press_key_L0+0
L_key5_press9:
;lib.h,75 :: 		if(ROW3==1) key= '3';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_key5_press10
	MOVLW      51
	MOVWF      key5_press_key_L0+0
L_key5_press10:
;lib.h,76 :: 		if(ROW4==1) key= '=';
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_key5_press11
	MOVLW      61
	MOVWF      key5_press_key_L0+0
L_key5_press11:
;lib.h,77 :: 		COL3=0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;lib.h,79 :: 		COL4 =1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;lib.h,81 :: 		if(ROW1==1) key= '/';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_key5_press12
	MOVLW      47
	MOVWF      key5_press_key_L0+0
L_key5_press12:
;lib.h,82 :: 		if(ROW2==1) key= '*';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_key5_press13
	MOVLW      42
	MOVWF      key5_press_key_L0+0
L_key5_press13:
;lib.h,83 :: 		if(ROW3==1) key= '-';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_key5_press14
	MOVLW      45
	MOVWF      key5_press_key_L0+0
L_key5_press14:
;lib.h,84 :: 		if(ROW4==1) key= '+';
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_key5_press15
	MOVLW      43
	MOVWF      key5_press_key_L0+0
L_key5_press15:
;lib.h,85 :: 		COL4=0;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;lib.h,87 :: 		return key;
	MOVF       key5_press_key_L0+0, 0
	MOVWF      R0+0
;lib.h,88 :: 		}
L_end_key5_press:
	RETURN
; end of _key5_press

_ResetCal:

;lib.h,90 :: 		void ResetCal()
;lib.h,92 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,93 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,94 :: 		numBefore = 0;
	CLRF       cal_numBefore+0
	CLRF       cal_numBefore+1
	CLRF       cal_numBefore+2
	CLRF       cal_numBefore+3
;lib.h,95 :: 		numAfter = 0;
	CLRF       cal_numAfter+0
	CLRF       cal_numAfter+1
	CLRF       cal_numAfter+2
	CLRF       cal_numAfter+3
;lib.h,96 :: 		numResult = 0;
	CLRF       cal_numResult+0
	CLRF       cal_numResult+1
	CLRF       cal_numResult+2
	CLRF       cal_numResult+3
;lib.h,97 :: 		for(i = 0; i < 6; i++) strNumber[i] = '\0';
	CLRF       cal_i+0
	CLRF       cal_i+1
L_ResetCal16:
	MOVLW      128
	XORWF      cal_i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ResetCal59
	MOVLW      6
	SUBWF      cal_i+0, 0
L__ResetCal59:
	BTFSC      STATUS+0, 0
	GOTO       L_ResetCal17
	MOVF       cal_i+0, 0
	ADDLW      cal_strNumber+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       cal_i+0, 1
	BTFSC      STATUS+0, 2
	INCF       cal_i+1, 1
	GOTO       L_ResetCal16
L_ResetCal17:
;lib.h,98 :: 		inputdata = 0;
	CLRF       cal_inputdata+0
	CLRF       cal_inputdata+1
;lib.h,99 :: 		operand = '\0';
	CLRF       cal_operand+0
;lib.h,100 :: 		}
L_end_ResetCal:
	RETURN
; end of _ResetCal

_calculate:

;lib.h,102 :: 		float calculate(float numBefore, float numAfter, char operand)
;lib.h,106 :: 		if      (operand == '+')  numResult = numBefore + numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      43
	BTFSS      STATUS+0, 2
	GOTO       L_calculate19
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate20
L_calculate19:
;lib.h,107 :: 		else if (operand == '-')  numResult = numBefore - numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      45
	BTFSS      STATUS+0, 2
	GOTO       L_calculate21
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate22
L_calculate21:
;lib.h,108 :: 		else if (operand == '*')  numResult = numBefore*numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_calculate23
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate24
L_calculate23:
;lib.h,109 :: 		else if (operand == '/')  numResult = numBefore/numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      47
	BTFSS      STATUS+0, 2
	GOTO       L_calculate25
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate26
L_calculate25:
;lib.h,110 :: 		else if (operand == '\0') numResult = numBefore + numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_calculate27
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
L_calculate27:
L_calculate26:
L_calculate24:
L_calculate22:
L_calculate20:
;lib.h,112 :: 		return numResult;
	MOVF       calculate_numResult_L0+0, 0
	MOVWF      R0+0
	MOVF       calculate_numResult_L0+1, 0
	MOVWF      R0+1
	MOVF       calculate_numResult_L0+2, 0
	MOVWF      R0+2
	MOVF       calculate_numResult_L0+3, 0
	MOVWF      R0+3
;lib.h,113 :: 		}
L_end_calculate:
	RETURN
; end of _calculate

_NextCal:

;lib.h,115 :: 		void NextCal(float* numResult, float* numBefore, float* numAfter)
;lib.h,118 :: 		while(1)
L_NextCal28:
;lib.h,120 :: 		key = key5_press();
	CALL       _key5_press+0
	MOVF       R0+0, 0
	MOVWF      NextCal_key_L0+0
;lib.h,121 :: 		if (key == 'a') { ResetCal(); break; }
	MOVF       R0+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_NextCal30
	CALL       _ResetCal+0
	GOTO       L_NextCal29
L_NextCal30:
;lib.h,122 :: 		else if (key != '\0')
	MOVF       NextCal_key_L0+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_NextCal32
;lib.h,124 :: 		*numBefore = *numResult;
	MOVF       FARG_NextCal_numResult+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+2
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+3
	MOVF       FARG_NextCal_numBefore+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
	MOVF       R0+2, 0
	INCF       FSR, 1
	MOVWF      INDF+0
	MOVF       R0+3, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;lib.h,125 :: 		*numResult = 0; *numAfter = 0;
	MOVF       FARG_NextCal_numResult+0, 0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	MOVF       FARG_NextCal_numAfter+0, 0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
;lib.h,127 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,128 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,129 :: 		LCD_out(1,1,"ans");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_cal+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lib.h,130 :: 		break;
	GOTO       L_NextCal29
;lib.h,131 :: 		}
L_NextCal32:
;lib.h,132 :: 		}
	GOTO       L_NextCal28
L_NextCal29:
;lib.h,133 :: 		}
L_end_NextCal:
	RETURN
; end of _NextCal

_main:

;cal.c,5 :: 		void main()
;cal.c,7 :: 		char key = '\0';
	CLRF       main_key_L0+0
;cal.c,8 :: 		key5_init();                // Khoi tao keypad
	CALL       _key5_init+0
;cal.c,9 :: 		Lcd_Init();                // Khoi tao LCD
	CALL       _Lcd_Init+0
;cal.c,10 :: 		LCD_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cal.c,12 :: 		while(1)
L_main33:
;cal.c,14 :: 		key = key5_press();                        // key : ky tu nhan duoc tu keypad
	CALL       _key5_press+0
	MOVF       R0+0, 0
	MOVWF      main_key_L0+0
;cal.c,15 :: 		while(key5_press() == key);
L_main35:
	CALL       _key5_press+0
	MOVF       R0+0, 0
	XORWF      main_key_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main36
	GOTO       L_main35
L_main36:
;cal.c,20 :: 		if (key >= '0' && key <= '9' || key == '.' )
	MOVLW      48
	SUBWF      main_key_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__main55
	MOVF       main_key_L0+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L__main55
	GOTO       L__main54
L__main55:
	MOVF       main_key_L0+0, 0
	XORLW      46
	BTFSC      STATUS+0, 2
	GOTO       L__main54
	GOTO       L_main41
L__main54:
;cal.c,22 :: 		Lcd_Chr_Cp(key);
	MOVF       main_key_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;cal.c,23 :: 		strNumber[inputdata] = key;
	MOVF       cal_inputdata+0, 0
	ADDLW      cal_strNumber+0
	MOVWF      FSR
	MOVF       main_key_L0+0, 0
	MOVWF      INDF+0
;cal.c,24 :: 		inputdata++;
	INCF       cal_inputdata+0, 1
	BTFSC      STATUS+0, 2
	INCF       cal_inputdata+1, 1
;cal.c,25 :: 		}
L_main41:
;cal.c,29 :: 		if (  key == '+' || key == '-' || key == '*' || key == '/')
	MOVF       main_key_L0+0, 0
	XORLW      43
	BTFSC      STATUS+0, 2
	GOTO       L__main53
	MOVF       main_key_L0+0, 0
	XORLW      45
	BTFSC      STATUS+0, 2
	GOTO       L__main53
	MOVF       main_key_L0+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L__main53
	MOVF       main_key_L0+0, 0
	XORLW      47
	BTFSC      STATUS+0, 2
	GOTO       L__main53
	GOTO       L_main44
L__main53:
;cal.c,31 :: 		Lcd_Chr_Cp(key);
	MOVF       main_key_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;cal.c,32 :: 		operand = key;
	MOVF       main_key_L0+0, 0
	MOVWF      cal_operand+0
;cal.c,34 :: 		if (numBefore == 0)
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       cal_numBefore+0, 0
	MOVWF      R0+0
	MOVF       cal_numBefore+1, 0
	MOVWF      R0+1
	MOVF       cal_numBefore+2, 0
	MOVWF      R0+2
	MOVF       cal_numBefore+3, 0
	MOVWF      R0+3
	CALL       _Equals_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main45
;cal.c,35 :: 		numBefore = atof(strNumber);    // Lieu ham atof co ton nhieu RAM khong?
	MOVLW      cal_strNumber+0
	MOVWF      FARG_atof_s+0
	CALL       _atof+0
	MOVF       R0+0, 0
	MOVWF      cal_numBefore+0
	MOVF       R0+1, 0
	MOVWF      cal_numBefore+1
	MOVF       R0+2, 0
	MOVWF      cal_numBefore+2
	MOVF       R0+3, 0
	MOVWF      cal_numBefore+3
L_main45:
;cal.c,38 :: 		for(i = 0; i<6;i++) strNumber[i] = '\0';
	CLRF       cal_i+0
	CLRF       cal_i+1
L_main46:
	MOVLW      128
	XORWF      cal_i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main63
	MOVLW      6
	SUBWF      cal_i+0, 0
L__main63:
	BTFSC      STATUS+0, 0
	GOTO       L_main47
	MOVF       cal_i+0, 0
	ADDLW      cal_strNumber+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       cal_i+0, 1
	BTFSC      STATUS+0, 2
	INCF       cal_i+1, 1
	GOTO       L_main46
L_main47:
;cal.c,39 :: 		inputdata = 0;
	CLRF       cal_inputdata+0
	CLRF       cal_inputdata+1
;cal.c,40 :: 		}
L_main44:
;cal.c,43 :: 		if (key == '=')
	MOVF       main_key_L0+0, 0
	XORLW      61
	BTFSS      STATUS+0, 2
	GOTO       L_main49
;cal.c,45 :: 		numAfter = atof(strNumber);
	MOVLW      cal_strNumber+0
	MOVWF      FARG_atof_s+0
	CALL       _atof+0
	MOVF       R0+0, 0
	MOVWF      cal_numAfter+0
	MOVF       R0+1, 0
	MOVWF      cal_numAfter+1
	MOVF       R0+2, 0
	MOVWF      cal_numAfter+2
	MOVF       R0+3, 0
	MOVWF      cal_numAfter+3
;cal.c,46 :: 		numResult = calculate(numBefore,numAfter,operand);
	MOVF       cal_numBefore+0, 0
	MOVWF      FARG_calculate_numBefore+0
	MOVF       cal_numBefore+1, 0
	MOVWF      FARG_calculate_numBefore+1
	MOVF       cal_numBefore+2, 0
	MOVWF      FARG_calculate_numBefore+2
	MOVF       cal_numBefore+3, 0
	MOVWF      FARG_calculate_numBefore+3
	MOVF       R0+0, 0
	MOVWF      FARG_calculate_numAfter+0
	MOVF       R0+1, 0
	MOVWF      FARG_calculate_numAfter+1
	MOVF       R0+2, 0
	MOVWF      FARG_calculate_numAfter+2
	MOVF       R0+3, 0
	MOVWF      FARG_calculate_numAfter+3
	MOVF       cal_operand+0, 0
	MOVWF      FARG_calculate_operand+0
	CALL       _calculate+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       R0+2, 0
	MOVWF      FLOC__main+2
	MOVF       R0+3, 0
	MOVWF      FLOC__main+3
	MOVF       FLOC__main+0, 0
	MOVWF      cal_numResult+0
	MOVF       FLOC__main+1, 0
	MOVWF      cal_numResult+1
	MOVF       FLOC__main+2, 0
	MOVWF      cal_numResult+2
	MOVF       FLOC__main+3, 0
	MOVWF      cal_numResult+3
;cal.c,47 :: 		if (numResult - (int)numResult == 0)
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	MOVF       FLOC__main+2, 0
	MOVWF      R0+2
	MOVF       FLOC__main+3, 0
	MOVWF      R0+3
	CALL       _double2int+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	MOVF       FLOC__main+2, 0
	MOVWF      R0+2
	MOVF       FLOC__main+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Equals_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main50
;cal.c,49 :: 		numResult = (int)numResult;
	MOVF       cal_numResult+0, 0
	MOVWF      R0+0
	MOVF       cal_numResult+1, 0
	MOVWF      R0+1
	MOVF       cal_numResult+2, 0
	MOVWF      R0+2
	MOVF       cal_numResult+3, 0
	MOVWF      R0+3
	CALL       _double2int+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      cal_numResult+0
	MOVF       R0+1, 0
	MOVWF      cal_numResult+1
	MOVF       R0+2, 0
	MOVWF      cal_numResult+2
	MOVF       R0+3, 0
	MOVWF      cal_numResult+3
;cal.c,50 :: 		IntToStr(numResult, strResult);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      cal_strResult+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;cal.c,51 :: 		}
	GOTO       L_main51
L_main50:
;cal.c,52 :: 		else FloatToStr(numResult, strResult);
	MOVF       cal_numResult+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       cal_numResult+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       cal_numResult+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       cal_numResult+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      cal_strResult+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
L_main51:
;cal.c,54 :: 		LCD_out(2,10,strResult);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      cal_strResult+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cal.c,57 :: 		NextCal(&numResult, &numBefore, &numAfter);
	MOVLW      cal_numResult+0
	MOVWF      FARG_NextCal_numResult+0
	MOVLW      cal_numBefore+0
	MOVWF      FARG_NextCal_numBefore+0
	MOVLW      cal_numAfter+0
	MOVWF      FARG_NextCal_numAfter+0
	CALL       _NextCal+0
;cal.c,58 :: 		}
L_main49:
;cal.c,61 :: 		if (key == 'a')  ResetCal();
	MOVF       main_key_L0+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_main52
	CALL       _ResetCal+0
L_main52:
;cal.c,63 :: 		}
	GOTO       L_main33
;cal.c,64 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
