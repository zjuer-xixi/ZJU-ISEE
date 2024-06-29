#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface7.h"
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

//产品排序函数，可实现按金额与按销量的排序 
void ProductOrder()
{
	Order_Product = (Product*)malloc(sizeof(Product));
	Head_Product = LoadProduct();

	Product* p1 = NULL;
	Product* p2 = NULL;
	
	char tempNum[10];         
	char tempLocation[15];    
	char tempDate[10];         
	char tempInformation[80];
	char tempAmount[10];            
	char tempPrice[10];         
	char tempSubFlag[5];    
	
	int sign = 0;       
	
	for (p1 = Head_Product; p1; p1 = p1->Next)
	{
		for (p2 = Head_Product; p2->Next; p2 = p2->Next)
		{
			if (OrderWay == 1)
			{
				if(strlen(p2->Price) < strlen(p2->Next->Price)||strcmp(p2->Price,p2->Next->Price) < 0) sign = 1;
				else sign = 0;
			}  
			if (OrderWay == 2)
			{
				if(strlen(p2->Amount) < strlen(p2->Next->Amount)||strcmp(p2->Amount,p2->Next->Amount) < 0) sign = 1;
				else sign = 0;
				
			}
			if (sign)
			{
				strcpy(tempNum, p2->Num);
				strcpy(p2->Num, p2->Next->Num);
				strcpy(p2->Next->Num, tempNum);
					
				strcpy(tempLocation, p2->Location);
				strcpy(p2->Location, p2->Next->Location);
				strcpy(p2->Next->Location, tempLocation);
					
				strcpy(tempDate, p2->Date);
				strcpy(p2->Date, p2->Next->Date);
				strcpy(p2->Next->Date, tempDate);
					
				strcpy(tempInformation, p2->Information);
				strcpy(p2->Information, p2->Next->Information);
				strcpy(p2->Next->Information, tempInformation);
					
				strcpy(tempPrice, p2->Price);
				strcpy(p2->Price, p2->Next->Price);
				strcpy(p2->Next->Price, tempPrice);
					
				strcpy(tempAmount, p2->Amount);
				strcpy(p2->Amount, p2->Next->Amount);
				strcpy(p2->Next->Amount, tempAmount);	
				 
				strcpy(tempSubFlag, p2->SubFlag);
				strcpy(p2->SubFlag, p2->Next->SubFlag);
				strcpy(p2->Next->SubFlag, tempSubFlag);	
			} 
	    }
	}
	OrderFlag = 1;
	Order_Product = Head_Product;
	Temp_Product = Order_Product;
}

//绘制排序界面文本 
void drawOrderText()
{
	if (OrderFlag == 0)
	{
		fH = GetFontHeight();
		h = fH * 2; 
		w = winwidth / 4; 
		x = winwidth / 2.65;
		y = winheight - 2 * h;

		SetPenColor("Brown");
		SetPointSize(25);
		drawLabel(x / 0.75 - TextStringWidth("请选择旅游产品信息排序方式") / 2, (y -= h * 9) + fH * 0.7, "请选择旅游产品信息排序方式");
		SetPenColor("Gray");
		SetPointSize(GetFontHeight());
	}
	else if (OrderFlag == 1)
	{ 
		fH = GetFontHeight();
		h = fH * 2; 
		w = winwidth / 3; 
		x = winwidth / 2.6;
		y = winheight - 4 * h;
		SetPenColor("Brown");
		drawLabel(x / 0.75 - TextStringWidth("排序结果显示(由高到低)") / 2, (y -= h * 1.2) + fH * 0.7, "排序结果显示(由高到低)");
		setTextBoxColors("Cyan", "red", "Violet", "Light Gray", 0);
		drawProduct(fH, x, y, w, h, Temp_Product);
		usePredefinedTexBoxColors(0);
		SetPenColor("Gray");
		
	} 
}

//绘制排序界面按钮 
void drawOrderButtons()
{
	setButtonColors("Violet", "Blue", "Orange", "Gray", 0);
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth / 2.5;
	y = winheight / 2 - 2 * h;
	w = winwidth / 5; 
	if(OrderFlag == 0) 
	{
		y = winheight / 2 - h;
		if (button(GenUIID(0), x, y -= h * 1.5, w, h, "按价格排序"))
		{
			OrderWay = 1;
			ProductOrder();
		}
		if (button(GenUIID(0), x, y -= h * 1.5, w, h, "按销售数量排序"))
		{
			OrderWay = 2;
			ProductOrder();
		}
		if (button(GenUIID(0), x, y -= h * 1.5, w, h, "返回"))
		{
			status = 1; 
		}
	}
	else if (OrderFlag == 1)
	{
		if (button(GenUIID(0), x, y -= h * 1.5, w, h, "返回"))
		{
			OrderFlag = 0;
			status = 7; 
		}
		if (Temp_Product != Head_Product)
		{
			if (button(GenUIID(0), x, y -= 1.5 * h, w, h, "上一个"))
			{
				Temp_Product = PreProduct(Temp_Product, Head_Product);
			}
		}
		if (Temp_Product->Next!= NULL)
		{
			if (button(GenUIID(0), x, y -= 1.5 * h, w, h, "下一个"))
			{
				Temp_Product = Temp_Product->Next;
			}
		}
	}
	setButtonColors("Brown", "Cyan", "Orange", "white", 1);
}


