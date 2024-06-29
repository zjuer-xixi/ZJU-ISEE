#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface4.h"
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

// ���ư�ʱ�����������ı� 
void drawDateSearchText()
{
	static char results[15] = "";
	
	if (SearchFlag == 0)
	{
		fH = GetFontHeight();
		h = fH * 2; 
		w = winwidth / 4; 
		x = winwidth / 2.65;
		y = winheight / 1.5 - h;
		SetPenColor("Gray");
		drawLabel(x - fH / 2 - TextStringWidth("����ʱ�䣨��June��"), (y -= h * 1.2) + fH * 0.7, "����ʱ�䣨��June��");
		if (textbox(GenUIID(0), x, y, w, h, input_of_search, sizeof(input_of_search)))
		{
			sprintf(results, input_of_search);
		}			
	} 
	
	else if (SearchFlag == -1)
	{
		fH = GetFontHeight();
		h = fH * 2; 
		w = winwidth / 4; 
		x = winwidth / 2;
		y = winheight / 1.5 - h;

		SetPenColor("Brown");
		drawLabel(x - TextStringWidth("û�в��ҵ�������ݣ�") / 2, (y -= h * 2) + fH * 0.7, "û�в��ҵ�������ݣ�");
		SetPenColor("Gray");

	}
	
	else if (SearchFlag == 1) 
	{
		double fH = GetFontHeight();
		double h = fH * 2;                   
		double w = winwidth / 3;            
		double x = winwidth / 2.65;
		double y = winheight - h;
		
		SetPenColor("Brown");
		drawLabel(x / 0.75 - TextStringWidth("��Ϊ��鵽ָ�������β�Ʒ") / 2, (y -= h * 1.2) + fH * 0.7, "��Ϊ��鵽ָ�������β�Ʒ");
		drawProduct(fH, x, y, w, h, Temp_Product);
		SetPenColor("Dark Gray");
	
	}
	
}

//���ư�ʱ���������水ť 
void drawDateSearchButtons() 
{
	double fH = GetFontHeight();
	double h = fH * 2;  
	double x = winwidth / 2.5;
	double y = winheight / 2 - 2 * h;
	double w = winwidth / 5; 

	if (SearchFlag == 0) {
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "����"))
		{
			DateSearch();
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			SearchFlag = 0;
			status = 1; 
		}
	}
	
	else if (SearchFlag == -1) {
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "��������"))
		{
			SearchFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			SearchFlag = 0;
			status = 1; 
		}
	}
	
	else if (SearchFlag == 1) {
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "��������"))
		{
			SearchFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			SearchFlag = 0;
			status = 1; 
		}
	}

}

//��ʱ���������� 
void DateSearch()
{
	Head_Product = LoadProduct();
	Product* p1;
	p1 = Head_Product;

	while (p1) 
	{
		int i = strcmp(input_of_search, p1->Date);
		if (i == 0) 
		{
			SearchFlag = 1;
			Search_Product = p1;
			Temp_Product = Search_Product;
			Temp_Product->Next = NULL;
			break;
		}
		p1 = p1->Next;
	}

	if (p1 == NULL) 
	{
		SearchFlag = -1;
	}
	return 0;
}
