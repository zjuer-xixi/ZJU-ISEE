#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface8.h"
#include "FunctionLib.h"

#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <time.h> 
#include <windows.h>
#include <olectl.h>
#include <mmsystem.h>
#include <wingdi.h>
#include <ole2.h>
#include <ocidl.h>
#include <winuser.h>
#include <string.h>

//������Ʒ��Ϣ���� 
char AddNum[100];         
char AddLocation[100];    
char AddDate[20];         
char AddInformation[1000];
char AddAmount[100];             
char AddPrice[10];        
char AddSubFlag[5];      

//����������Ʒ�����ı� 
void drawAddText() 
{
	static char results[80] = "";
	fH = GetFontHeight();
	h = fH * 2; 
	w = winwidth / 3; 
	x = winwidth / 2.65;
	y = winheight / 1.5;

	if (NewAddFlag == 0)
	{
		x = winwidth / 3;
		
		SetPointSize(25); 
		SetPenColor("red");
		drawLabel(x + 2.05 * h, y + h, "������������Ϣ");
		SetPointSize(fH);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("��Ʒ���"), (y -= h * 1.3), "��Ʒ���");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddNum, sizeof(AddNum)))	sprintf(results, AddNum);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("�ص�"), (y -= h * 1.3), "�ص�");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddLocation, sizeof(AddLocation)))	sprintf(results, AddLocation);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("��������"), (y -= h * 1.3), "��������");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddDate, sizeof(AddDate)))	sprintf(results, AddDate);
		sprintf(results, AddDate);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("��Ʒ�۸�"), (y -= h * 1.3), "��Ʒ�۸�");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddPrice, sizeof(AddPrice)))	sprintf(results, AddPrice);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("��������"), (y -= h * 1.3), "��������");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddAmount, sizeof(AddAmount)))	sprintf(results, AddAmount);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("�������"), (y -= h * 1.3), "�������");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddInformation, sizeof(AddInformation)))	sprintf(results, AddInformation);
		
		
	}
	else if (NewAddFlag == 1)
	{
		y = winheight / 1.5 - h;
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("��Ӳ�Ʒ�ɹ���") / 2, (y -= h * 1.2) + fH * 0.7, "��Ӳ�Ʒ�ɹ���");
	}
	else if (NewAddFlag == -1)
	{
		y = winheight / 1.5 - h;
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("����Ĳ�Ʒ����ظ���") / 2, (y -= h * 1.2) + fH * 0.7, "����Ĳ�Ʒ����ظ���");
	}
	SetPenColor("Gray");

}


//������Ʒ��ť���� 
void drawAddButtons() 
{
	 h = fH * 2;  
	 x = winwidth / 2.5;
	 y = winheight / 2 - 6 * h;
	 w = winwidth / 5; 

	if (NewAddFlag == 0)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "�½�"))
		{
			AddProduct(AddNum, AddLocation, AddDate, AddPrice, AddAmount, AddInformation);
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			NewAddFlag = 0;
			status = 2; 
		}
		
	
	}
	else if (NewAddFlag == 1)
	{
		y = winheight / 2 - 2 * h;
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			NewAddFlag = 0;
			status = 2; 
		}
	}
	else if (NewAddFlag == -1)
	{
		y = winheight / 2 - 2 * h;
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "��������"))
		{
			NewAddFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			NewAddFlag = 0;
			status = 2; 
		}
	}
}

//������Ʒ���� 
void AddProduct(char* Num, char* Location, char* Date, char* Price, char* Amount, char* Information)
{
	Head_Product = LoadProduct();
	Product* m = Head_Product;
	while (m)
	{
		if (strcmp(m->Num, Num) == 0)
		{
			NewAddFlag = -1;
			return;
		}
		m = m->Next;
	}

	FILE* fp;
	
	if (!(fp = fopen("Data.txt", "a+"))) {
		exit(-1); 
	}
	fputc('\n', fp);
	fputs(Num, fp); fputc('\n', fp);                  
	fputs(Location, fp); fputc('\n', fp);                     
	fputs(Date, fp); fputc('\n', fp);                 
	fputs(Price, fp); fputc('\n', fp);                
	fputs(Information, fp); fputc('\n', fp);              
	fputs(Amount, fp); fputc('\n', fp);           
	fputs("Flase", fp);                  
	fclose(fp);

	NewAddFlag = 1;
}
