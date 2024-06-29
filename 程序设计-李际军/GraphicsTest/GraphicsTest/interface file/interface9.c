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

//绘制删除界面文本 
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
		drawLabel(x - fH / 2 - TextStringWidth("请输入删除产品编号"), (y -= h * 1.2) + fH * 0.7, "请输入删除产品编号");
			if (textbox(GenUIID(0), x, y, w, h, DeleteNum, sizeof(DeleteNum)))
				sprintf(results, DeleteNum);
	
	
	}
	else if (DeleteFlag == 1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("删除成功！") / 2, (y -= h * 1.2) + fH * 0.7, "删除成功！");
	}
	else if (DeleteFlag == -1)
	{
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("该产品不存在！") / 2, (y -= h * 1.2) + fH * 0.7, "该产品不存在！");
	}

	SetPenColor("Gray");

}

//绘制删除界面按钮 
void drawDeleteButtons()
{
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth / 2.5;
	y = winheight / 2 - 2 * h;
	w = winwidth / 5; 

	if (DeleteFlag == 0)
	{
		
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "删除"))
		{
			DeleteProduct(DeleteNum);
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			DeleteFlag = 0;
			status = 2; 
		}
	}
	else if (DeleteFlag == 1)
	{
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			DeleteFlag = 0;
			status = 2; 
		}
	}
	else if (DeleteFlag == -1)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "重新输入"))
		{
			DeleteFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			DeleteFlag = 0;
			status = 2; 
		}
	}
}

//删除产品操作 
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
