#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface6.h"
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

//�����˶������
void drawUnsubText()
{
	static char results[10] = "";
	fH = GetFontHeight();
	h = fH * 2; // �ؼ��߶�
	w = winwidth / 4; // �ؼ����
	x = winwidth / 2.65;
	y = winheight / 1.5 - h;

	if (UnsubFlag == 0)
	{
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("�������Ʒ���"), (y -= h * 1.2) + fH * 0.7, "�������Ʒ���");
		if (textbox(GenUIID(0), x, y, w, h, UnsubNum, sizeof(UnsubNum)))
			sprintf(results, UnsubNum);
	}
	else if (UnsubFlag == 1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("�˶��ɹ���") / 2, (y -= h * 1.2) + fH * 0.7, "�˶��ɹ���");
	}
	else if (UnsubFlag == 2)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("δԤ�����ò�Ʒ��") / 2, (y -= h * 1.2) + fH * 0.7, "δԤ�����ò�Ʒ����");
	}
	else if (UnsubFlag == -1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("�Ҳ�����Ʒ��") / 2, (y -= h * 1.2) + fH * 0.7, "�Ҳ�����Ʒ��");
	}

	SetPenColor("Gray");
}


//�˶����水ť����
void drawUnsubButtons()
{
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth / 2.5;
	y = winheight / 2 - 2 * h;
	w = winwidth / 5; 


	if (UnsubFlag == 0)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "�˶�"))
		{
			UnsubscribeProduct(UnsubNum);
			
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			UnsubFlag = 0;
			status = 1; 
		}
	}
	else if (UnsubFlag == 1)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "��ҪԤ��"))
		{
			UnsubFlag = 0;
			status = 5; 
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			UnsubFlag = 0;
			status = 5; 
		}
	}
	else if (UnsubFlag == 2)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "��������"))
		{
			UnsubFlag = 0; 
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			UnsubFlag = 0;
			status = 1; 
		}
	}
	else if (UnsubFlag == -1)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "��������"))
		{
			UnsubFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			UnsubFlag = 0;
			status = 1; 
		}
	}
}

//�˶����� 
void UnsubscribeProduct(char* UnsubNum)
{
	Head_Product = LoadProduct();
	Product* m = Head_Product;
	
	while(m)
	{
		if(strcmp(m->Num,UnsubNum) == 0)
			break;
		m = m->Next;
	}
	if (m == NULL) 
		UnsubFlag = -1; 
	else if (strcmp(m->SubFlag, "Flase") == 0)
		UnsubFlag = 2; 
	else 
	{
		strcpy(m->SubFlag, "Flase");
		int num = atoi(m->Amount);
    	num--;
    	sprintf(m->Amount, "%d", num);
		fprintProduct(Head_Product);
		UnsubFlag = 1; 
	}
}
