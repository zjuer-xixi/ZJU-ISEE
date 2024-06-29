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

//新增产品信息数据 
char AddNum[100];         
char AddLocation[100];    
char AddDate[20];         
char AddInformation[1000];
char AddAmount[100];             
char AddPrice[10];        
char AddSubFlag[5];      

//绘制新增产品界面文本 
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
		drawLabel(x + 2.05 * h, y + h, "请完善以下信息");
		SetPointSize(fH);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("产品编号"), (y -= h * 1.3), "产品编号");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddNum, sizeof(AddNum)))	sprintf(results, AddNum);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("地点"), (y -= h * 1.3), "地点");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddLocation, sizeof(AddLocation)))	sprintf(results, AddLocation);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("旅行日期"), (y -= h * 1.3), "旅行日期");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddDate, sizeof(AddDate)))	sprintf(results, AddDate);
		sprintf(results, AddDate);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("产品价格"), (y -= h * 1.3), "产品价格");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddPrice, sizeof(AddPrice)))	sprintf(results, AddPrice);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("已售数量"), (y -= h * 1.3), "已售数量");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddAmount, sizeof(AddAmount)))	sprintf(results, AddAmount);
		
		SetPenColor("Brown");
		drawLabel(x - fH / 2 - TextStringWidth("详情介绍"), (y -= h * 1.3), "详情介绍");
		if (textbox(GenUIID(0), x, y - 0.3 * h, w, h, AddInformation, sizeof(AddInformation)))	sprintf(results, AddInformation);
		
		
	}
	else if (NewAddFlag == 1)
	{
		y = winheight / 1.5 - h;
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("添加产品成功！") / 2, (y -= h * 1.2) + fH * 0.7, "添加产品成功！");
	}
	else if (NewAddFlag == -1)
	{
		y = winheight / 1.5 - h;
		SetPenColor("Brown");
		drawLabel(x * 1.325 - TextStringWidth("输入的产品编号重复！") / 2, (y -= h * 1.2) + fH * 0.7, "输入的产品编号重复！");
	}
	SetPenColor("Gray");

}


//新增产品按钮绘制 
void drawAddButtons() 
{
	 h = fH * 2;  
	 x = winwidth / 2.5;
	 y = winheight / 2 - 6 * h;
	 w = winwidth / 5; 

	if (NewAddFlag == 0)
	{
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "新建"))
		{
			AddProduct(AddNum, AddLocation, AddDate, AddPrice, AddAmount, AddInformation);
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			NewAddFlag = 0;
			status = 2; 
		}
		
	
	}
	else if (NewAddFlag == 1)
	{
		y = winheight / 2 - 2 * h;
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			NewAddFlag = 0;
			status = 2; 
		}
	}
	else if (NewAddFlag == -1)
	{
		y = winheight / 2 - 2 * h;
		if (button(GenUIID(0), x, y - 1.5 * h, w, h, "重新输入"))
		{
			NewAddFlag = 0;
		}
		if (button(GenUIID(0), x, y - 3 * h, w, h, "返回"))
		{
			NewAddFlag = 0;
			status = 2; 
		}
	}
}

//新增产品操作 
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
