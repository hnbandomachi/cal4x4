#ifndef __LIB_h
#define __LIB_h

#define PI 3.1415926535897
#include <math.h>
#include <stdio.h>

static double numBefore = 0, numAfter = 0, numResult = 0;
static char strResult[6], strNumber[6], stringj[2];
static char operand;
static int  inputdata = 0, i = 0;


// Lcd pinout settings
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D7 at RB3_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D4 at RB0_bit;

// Pin direction
sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D7_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB0_bit;

// Keypad5 module connection
sbit ROW1 at RC0_bit;
sbit ROW2 at RC1_bit;
sbit ROW3 at RC2_bit;
sbit ROW4 at RC3_bit;

sbit COL1 at RC4_bit;
sbit COL2 at RC5_bit;
sbit COL3 at RC6_bit;
sbit COL4 at RC7_bit;

void key5_init()               // TRIS = 1  ===> INPUT DATA
{
     TRISC.B0 = 1;
     TRISC.B1 = 1;
     TRISC.B2 = 1;
     TRISC.B3 = 1;
     TRISC.B4 = 0;
     TRISC.B5 = 0;
     TRISC.B6 = 0,
     TRISC.B7 = 0;
//     PORTC = 0XFF; PORTD = 0XFF;
}

char key5_press()     // Scan press key and return it
{
     char key = '\0';

     COL1 =1;
      if(ROW1==1) key= '7';
      if(ROW2==1) key= '4';
      if(ROW3==1) key= '1';
      if(ROW4==1) key= 'a';
     COL1=0;

     COL2 =1;
      if(ROW1==1) key= '8';
      if(ROW2==1) key= '5';
      if(ROW3==1) key= '2';
      if(ROW4==1) key= '0';
     COL2=0;

     COL3 =1;
      if(ROW1==1) key= '9';
      if(ROW2==1) key= '6';
      if(ROW3==1) key= '3';
      if(ROW4==1) key= '=';
     COL3=0;

     COL4 =1;
      // LCD_out(1,1,"COL4");     
      if(ROW1==1) key= '/';
      if(ROW2==1) key= '*';
      if(ROW3==1) key= '-';     
      if(ROW4==1) key= '+';     
     COL4=0;

    return key;
}

void ResetCal()
{
  Lcd_Cmd(_LCD_CLEAR);        
  Lcd_Cmd(_LCD_RETURN_HOME);
  numBefore = 0; 
  numAfter = 0;
  numResult = 0;
  for(i = 0; i < 6; i++) strNumber[i] = '\0';
  inputdata = 0;
  operand = '\0';
}

float calculate(float numBefore, float numAfter, char operand)
{
  float numResult;

  if      (operand == '+')  numResult = numBefore + numAfter;
  else if (operand == '-')  numResult = numBefore - numAfter;
  else if (operand == '*')  numResult = numBefore*numAfter;
  else if (operand == '/')  numResult = numBefore/numAfter;
  else if (operand == '\0') numResult = numBefore + numAfter;

  return numResult;
}

void NextCal(float* numResult, float* numBefore, float* numAfter)
{
  char key;
  while(1)
  {
    key = key5_press();
    if (key == 'a') { ResetCal(); break; }
    else if (key != '\0')
    {
      *numBefore = *numResult;
      *numResult = 0; *numAfter = 0;     

      Lcd_Cmd(_LCD_CLEAR);
      Lcd_Cmd(_LCD_RETURN_HOME);
      LCD_out(1,1,"ans");
      break;
    }
  }
}

#endif
// end of LIB.h