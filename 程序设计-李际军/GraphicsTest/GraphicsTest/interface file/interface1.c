#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface1.h"
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

//绘制用户界面菜单 
void drawUserMenu()
{
	setMenuColors("Light Gray", "Brown", "Yellow", "Black", 1);
	
	//菜单控件申明
	static char* menuListSearch[] = { "搜索",
		"按地点搜索",
		"按时间搜索",
		"返回",};
	static char* menuListCheck[] = { "产品管理",
		"预订",
		"退订",
		"返回",};
	static char* menuListRank[] = { "信息",
		"排序", 
		"返回",};
		
	static char* selectedLabel = NULL;

	fH = GetFontHeight();
	x = 0; 
	y = winheight;
	h = fH * 2; 
	double w = TextStringWidth(menuListRank[0]) * 3; 
	double wlist = w;
	double xindent = winheight / 20; 
	int selection;

	drawMenuBar(x, y - h, 3.3 * w, h);
	
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
		status = 5;    
	}
	if (selection == 2)   
	{
		status = 6;
    }
	if (selection == 3)   
	{
		status = 0;
    }
    
	// 信息菜单
	selection = menuList(GenUIID(0), x + 2.3 * w, y - h, w, wlist, h, menuListRank, sizeof(menuListRank) / sizeof(menuListRank[0]));
	if (selection > 0) selectedLabel = menuListRank[selection];
	if (selection == 1)  
	{	
		status = 7;	 
	}
	if (selection == 2)
	{
		status = 0; 
    }
}

void drawUserButtons()
{
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth / 3;
	y = winheight / 3;
	w = winwidth / 6; 
	
	if (button(GenUIID(0), x, y -= 1.5 * h, w, h, "查看下一个产品"))
	{	
		if (Temp_Product->Next!= NULL)	Temp_Product = Temp_Product->Next;
		else 	Temp_Product = LoadProduct();
	}
	if (button(GenUIID(0), x, y -= 1.5 * h, w, h, "查看用户帮助"))
	{
		system("UserHelp.txt"); 
	}
	if (button(GenUIID(0), x + 1.2 * w, y += h * 1.5, w, h, "返回主界面"))
	{
		status = 0; 
	}
	if (button(GenUIID(0), x + 1.2 * w, y -= h * 1.5, w, h, "进入预订界面"))
	{
		status = 5; 
	}
}

void drawUserProduct()
{   
	static int i = 0;
	if(i==0)
	{
		Temp_Product = LoadProduct();
		i++;
	}
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth / 2.5;
	y = winheight / 1.5;
	w = winwidth / 3; 
	
	drawProduct(fH, x, y + h, w, h, Temp_Product);
	
	SetPointSize(25);
	SetPenColor("Violet");
	drawLabel(winwidth / 2.2, y + 2 * h, "产品汇总："); 
	SetPenColor("Green");
	SetPointSize(fH);
}
