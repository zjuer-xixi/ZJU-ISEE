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

//绘制退订输入框
void drawUnsubText()
{
	static char results[10] = "";
	fH = GetFontHeight();
	h = fH * 2; // 控件高度
	w = winwidth / 4; // 控件宽度
	x = winwidth / 2.65;
	y = winheight / 1.5 - h;

	if (UnsubFlag == 0)
	{
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("请输入产品编号"), (y -= h * 1.2) + fH * 0.7, "请输入产品编号");
		if (textbox(GenUIID(0), x, y, w, h, UnsubNum, sizeof(UnsubNum)))
			sprintf(results, UnsubNum);
	}
	else if (UnsubFlag == 1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("退订成功！") / 2, (y -= h * 1.2) + fH * 0.7, "退订成功！");
	}
	else if (UnsubFlag == 2)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("未预订过该产品！") / 2, (y -= h * 1.2) + fH * 0.7, "未预订过该产品！！");
	}
	else if (UnsubFlag == -1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("找不到产品！") / 2, (y -= h * 1.2) + fH * 0.7, "找不到产品！");
	}

	SetPenColor("Gray");
}


//退订界面按钮绘制
void drawUnsubButtons()
{
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth / 2.5;
	y = winheight / 2 - 2 * h;
	w = winwidth / 5; 


	if (UnsubFlag == 0)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "退订"))
		{
			UnsubscribeProduct(UnsubNum);
			
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			UnsubFlag = 0;
			status = 1; 
		}
	}
	else if (UnsubFlag == 1)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "我要预订"))
		{
			UnsubFlag = 0;
			status = 5; 
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			UnsubFlag = 0;
			status = 5; 
		}
	}
	else if (UnsubFlag == 2)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "重新输入"))
		{
			UnsubFlag = 0; 
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			UnsubFlag = 0;
			status = 1; 
		}
	}
	else if (UnsubFlag == -1)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "重新输入"))
		{
			UnsubFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			UnsubFlag = 0;
			status = 1; 
		}
	}
}

//退订操作 
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
