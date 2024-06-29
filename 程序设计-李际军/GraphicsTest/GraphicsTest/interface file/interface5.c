#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface5.h"
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

//预定界面文本绘制 
void drawReserveText()
{
	char results[10] = "";
	fH = GetFontHeight();
	h = fH * 2; 
	w = winwidth / 4; 
	x = winwidth / 2.65;
	y = winheight / 1.5 - h;

	if (ReserveFlag == 0)
	{
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("请输入产品编号"), (y -= h * 1.2) + fH * 0.7, "请输入产品编号");
		if (textbox(GenUIID(0), x, y, w, h, ReserveNum, sizeof(ReserveNum)))
			sprintf(results, ReserveNum);
	}
	else if (ReserveFlag == 1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("预订成功！") / 2, (y -= h * 1.2) + fH * 0.7, "预订成功！");
	}
	else if (ReserveFlag == 2)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("已预订过该产品！") / 2, (y -= h * 1.2) + fH * 0.7, "已预订过该产品！");
	}
	else if (ReserveFlag == -1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("找不到产品！") / 2, (y -= h * 1.2) + fH * 0.7, "找不到产品！");
	}

	SetPenColor("Gray");
}


//预订界面按钮绘制
void drawReserveButtons()
{
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth / 2.5;
	y = winheight / 2 - 2 * h;
	w = winwidth / 5; 


	if (ReserveFlag == 0)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "预订"))
		{
			ReserveProduct(ReserveNum);
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			ReserveFlag = 0;
			status = 1; 
		}
	}
	else if (ReserveFlag == 1)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "我要退订"))
		{
			ReserveFlag = 0;
			status = 6; 
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			ReserveFlag = 0;
			status = 1; 
		}
	}
	else if (ReserveFlag == 2)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "重新输入"))
		{
			ReserveFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			ReserveFlag = 0;
			status = 1; 
		}
	}
	else if (ReserveFlag == -1)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "重新输入"))
		{
			ReserveFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			ReserveFlag = 0;
			status = 1; 
		}
	}
}

//预定操作 
ReserveProduct(char* ReserveNum)
{
	Head_Product = LoadProduct();
	Product* m = Head_Product;
	
	while(m)
	{
		if(strcmp(m->Num,ReserveNum) == 0)
			break;
		m = m->Next;
	}
	if (m == NULL) 
		ReserveFlag = -1; 
	else if (strcmp(m->SubFlag, "True") == 0)
		ReserveFlag = 2; 
	else 
	{
		strcpy(m->SubFlag, "True");
		int num = atoi(m->Amount);
    	num++;
    	sprintf(m->Amount, "%d", num);
		fprintProduct(Head_Product);
		ReserveFlag = 1; 
	}
}
