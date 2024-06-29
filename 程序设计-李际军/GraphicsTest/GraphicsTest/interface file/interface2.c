#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface2.h" 
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

//绘制管理员界面按钮 
void drawAdminButtons()
{	
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth/2.5;  
	y = winheight/2 - h; 
	w = winwidth/5; 
	
	setButtonColors("Gray", "Orange", "Brown", "Violet", 1);
	
	if (button(GenUIID(0), x + 1.5 * w, y - h, w, h, "增加旅游产品"))
	{ 	
		status = 8;
	}

	if( button(GenUIID(0), x + 1.5 * w, y - 2.4*h, w, h, "删除旅游产品") )
	{	
		status = 9;
	}
	if( button(GenUIID(0), x + 1.5 * w, y - 3.8*h, w, h, "管理员须知") )
	{	
		system("Administrator.txt");
	}
	if( button(GenUIID(0), x + 1.5 * w, y - 5.2*h, w, h, "返回主界面") )
	{	
		status = 0;
		display();
	}
}

//显示本季度热销产品 
void drawAdminProduct()
{
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth/8;  
	y = winheight/2; 
	w = winwidth/5;
	
	SetPenColor("Cyan");
	drawLabel(x, (y -= h * 1.2) + fH * 0.7, "本季度推荐产品A");
	
	SetPenColor("Brown");	
	drawLabel(x - fH / 2 - TextStringWidth("编号") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "编号");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, "01", sizeof("01"));
	
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("地点") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "地点");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, "HangZhou", sizeof("HangZhou"));
	
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("出行日期") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "出行日期");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h,"June", sizeof("June"));
	
	Head_Product = LoadProduct();
	Product* p = Head_Product;
	while(p)
	{
		if(strcmp(p->Num,"01") == 0)
			break;
		p = p->Next;
	}
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("已售数量") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "已售数量");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Amount, sizeof(p->Amount));
	
	SetPenColor("Gray");
	drawLabel(x + 4 * h, (y -= h * 2.2) + fH * 0.7, "可以考虑增加以上产品场次！");
	
	x += winwidth/3.5;
	y = winheight/2;
	
	SetPenColor("Cyan");
	drawLabel(x, (y -= h * 1.2) + fH * 0.7, "本季度推荐产品B");
	
	SetPenColor("Brown");	
	drawLabel(x - fH / 2 - TextStringWidth("编号") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "编号");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, "02", sizeof("02"));
	
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("地点") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "地点");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, "NanJing", sizeof("NanJing"));
	
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("出行日期") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "出行日期");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h,"May", sizeof("May"));
	
	while(p)
	{
		if(strcmp(p->Num,"02") == 0)
			break;
		p = p->Next;
	}
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("已售数量") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "已售数量");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Amount, sizeof(p->Amount));
	free(p);
	
	SetPenColor("Black");
} 

//绘制管理员界面中心标语 
void drawAdminBox()
{
	x = winwidth / 12; 
	y = winheight / 1.7; 
	w = winwidth / 1.2; 
	h = GetFontHeight() * 8;
	SetPointSize(35); 
	SetPenColor("Yellow");
	drawBox(x, y, w, h, 1, "务必遵守诚信准则，满足每位顾客的需求！", 'C', "red");
	SetPointSize(GetFontHeight()); 
}

//绘制用户界面菜单 
void drawAdminMenu()
{
	setMenuColors("Dark Gray", "Brown", "Black", "Green", 0);
	
	//菜单控件申明
	static char* menuListSearch[] = { "搜索",
		"按地点搜索",
		"按时间搜索",
		"返回",};
	static char* menuListCheck[] = { "产品管理",
		"增加产品",
		"删除产品",
		"返回",};
	static char* menuListRank[] = { "信息",
		"排序",
		"产品库", 
		"返回",};
		
	static char* selectedLabel = NULL;

	fH = GetFontHeight();
	x = 0; 
	y = winheight;
	h = fH * 2; 
	w = TextStringWidth(menuListRank[0]) * 3; 
	double wlist = w;
	double xindent = winheight / 20; 
	int selection;

	drawMenuBar(x, y - h, 3 * w, h);
	
	//搜索菜单
	selection = menuList(GenUIID(0), x, y - h, w, wlist, h, menuListSearch, sizeof(menuListSearch) / sizeof(menuListSearch[0]));
	if (selection > 0) selectedLabel = menuListSearch[selection];
	if (selection == 1) 
	{
		status = 3;    //前往地点搜索界面 
	} 
	if (selection == 2)
	{
		status = 4;    //前往日期搜索界面 
	} 
	if (selection == 3) 
	{
		status = 0;    //返回主界面 
    }

	
	// 管理菜单
	selection = menuList(GenUIID(0), x + w, y - h, w, wlist, h, menuListCheck, sizeof(menuListCheck) / sizeof(menuListCheck[0]));
	if (selection > 0) selectedLabel = menuListCheck[selection];
	if (selection == 1)   
	{
		status = 8;    
	}
	if (selection == 2)   
	{
		status = 9;
    }
	if (selection == 3)   
	{
		status = 0;
    }
    
	// 信息菜单
	selection = menuList(GenUIID(0), x + 2 * w, y - h, w, wlist, h, menuListRank, sizeof(menuListRank) / sizeof(menuListRank[0]));
	if (selection > 0) selectedLabel = menuListRank[selection];
	if (selection == 1)  
	{	
		status = 7;	 
	}
	if (selection == 2)
	{
		system("Data.txt");
    }
    if (selection == 3)
	{
		status = 0; 
    }
}

