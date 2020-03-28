#include "LIB.h"
// Hello
// Hello 2

void main()
{
        char key = '\0';
        key5_init();                // Khoi tao keypad
        Lcd_Init();                // Khoi tao LCD
        LCD_Cmd(_LCD_CURSOR_OFF);

        while(1)
        {
                key = key5_press();                        // key : ky tu nhan duoc tu keypad
                while(key5_press() == key);

                // if (key == 'x')  calculateX();

                // Tinh so thap phan: strNumber la chuoi so. VD: strNumber = "12.345"
                if (key >= '0' && key <= '9' || key == '.' )
                {
                        Lcd_Chr_Cp(key);
                        strNumber[inputdata] = key;
                        inputdata++;
                }

                // Xac nhan toan tu & nhan ket qua cua numBefore
                // Vi khong du RAM nen khong the thuc hien ham tan()
                if (  key == '+' || key == '-' || key == '*' || key == '/')
                {
                        Lcd_Chr_Cp(key);
                        operand = key;

                        if (numBefore == 0)
                            numBefore = atof(strNumber);    // Lieu ham atof co ton nhieu RAM khong?

                        // Xoa chuoi so de bat dau cho lan nhap tiep theo
                        for(i = 0; i<6;i++) strNumber[i] = '\0';
                        inputdata = 0;
                }

                // In ket qua
                if (key == '=')
                {
                        numAfter = atof(strNumber);
                        numResult = calculate(numBefore,numAfter,operand);
                        if (numResult - (int)numResult == 0)
                        {
                                numResult = (int)numResult;
                            IntToStr(numResult, strResult);
                        }
                        else FloatToStr(numResult, strResult);
                        // Lcd_Chr(2,9,'=');
                        LCD_out(2,10,strResult);

                        // Ghi nhan cac ket qua cho lan tinh toan tiep theo
                        NextCal(&numResult, &numBefore, &numAfter);
                }

                // Reset
                if (key == 'a')  ResetCal();

        }
}