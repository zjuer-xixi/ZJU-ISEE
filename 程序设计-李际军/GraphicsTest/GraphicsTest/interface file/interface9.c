#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface9.h"
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

//����ɾ�������ı� 
void drawDeleteText()
{
	static char results[10] = "";

	fH = GetFontHeight();
	h = fH * 2; 
	w = winwidth / 4; 
	x = winwidth / 2.65;
	y = winheight / 1.5 - h;

	if (DeleteFlag == 0)
	{
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("������ɾ����Ʒ���"), (y -= h * 1.2) + fH * 0.7, "������ɾ����Ʒ���");
			if (textbox(GenUIID(0), x, y, w, h, DeleteNum, sizeof(DeleteNum)))
				sprintf(results, DeleteNum);
	
	
	}
	else if (DeleteFlag == 1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("ɾ���ɹ���") / 2, (y -= h * 1.2) + fH * 0.7, "ɾ���ɹ���");
	}
	else if (DeleteFlag == -1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("�ò�Ʒ�����ڣ�") / 2, (y -= h * 1.2) + fH * 0.7, "�ò�Ʒ�����ڣ�");
	}

	SetPenColor("Gray");

}

//����ɾ�����水ť 
void drawDeleteButtons()
{
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth / 2.5;
	y = winheight / 2 - 2 * h;
	w = winwidth / 5; 

	if (DeleteFlag == 0)
	{
		
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "ɾ��"))
		{
			DeleteProduct(DeleteNum);
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			DeleteFlag = 0;
			status = 2; 
		}
	}
	else if (DeleteFlag == 1)
	{
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			DeleteFlag = 0;
			status = 2; 
		}
	}
	else if (DeleteFlag == -1)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "��������"))
		{
			DeleteFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "����"))
		{
			DeleteFlag = 0;
			status = 2; 
		}
	}
}

//ɾ����Ʒ���� 
void DeleteProduct(char* DeleteNum)
{	
	Head_Product = LoadProduct();
	Product* n = NULL;
	Product* m = Head_Product;
	
	while(m)
	{
		if(strcmp(m->Num,DeleteNum) == 0)
			break;
		n = m;
		m = m->Next;
	}
	if (m == NULL) 
		DeleteFlag = -1; 
	else if (m == Head_Product) {
		Head_Product = Head_Product->Next;
		free(m);
		fprintProduct(Head_Product);
		DeleteFlag = 1; 
	}
	else 
	{
		n->Next = m->Next;
		free(m);
		fprintProduct(Head_Product);
		DeleteFlag = 1; 
	}
}
