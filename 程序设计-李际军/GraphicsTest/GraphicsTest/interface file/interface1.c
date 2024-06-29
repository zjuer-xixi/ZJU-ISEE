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

//�����û�����˵� 
void drawUserMenu()
{
	setMenuColors("Light Gray", "Brown", "Yellow", "Black", 1);
	
	//�˵��ؼ�����
	static char* menuListSearch[] = { "����",
		"���ص�����",
		"��ʱ������",
		"����",};
	static char* menuListCheck[] = { "��Ʒ����",
		"Ԥ��",
		"�˶�",
		"����",};
	static char* menuListRank[] = { "��Ϣ",
		"����", 
		"����",};
		
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
	
	//�����˵�
	selection = menuList(GenUIID(0), x, y - h, w, wlist, h, menuListSearch, sizeof(menuListSearch) / sizeof(menuListSearch[0]));
	if (selection > 0) selectedLabel = menuListSearch[selection];
	if (selection == 1) 
	{
		status = 3;    //ǰ���ص��������� 
	} 
	if (selection == 2)
	{
		status = 4;    //ǰ�������������� 
	} 
	if (selection == 3) 
	{
		status = 0;    //���������� 
    }

	
	// ����˵�
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
    
	// ��Ϣ�˵�
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
	
	if (button(GenUIID(0), x, y -= 1.5 * h, w, h, "�鿴��һ����Ʒ"))
	{	
		if (Temp_Product->Next!= NULL)	Temp_Product = Temp_Product->Next;
		else 	Temp_Product = LoadProduct();
	}
	if (button(GenUIID(0), x, y -= 1.5 * h, w, h, "�鿴�û�����"))
	{
		system("UserHelp.txt"); 
	}
	if (button(GenUIID(0), x + 1.2 * w, y += h * 1.5, w, h, "����������"))
	{
		status = 0; 
	}
	if (button(GenUIID(0), x + 1.2 * w, y -= h * 1.5, w, h, "����Ԥ������"))
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
	drawLabel(winwidth / 2.2, y + 2 * h, "��Ʒ���ܣ�"); 
	SetPenColor("Green");
	SetPointSize(fH);
}
