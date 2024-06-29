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

//���ƹ���Ա���水ť 
void drawAdminButtons()
{	
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth/2.5;  
	y = winheight/2 - h; 
	w = winwidth/5; 
	
	setButtonColors("Gray", "Orange", "Brown", "Violet", 1);
	
	if (button(GenUIID(0), x + 1.5 * w, y - h, w, h, "�������β�Ʒ"))
	{ 	
		status = 8;
	}

	if( button(GenUIID(0), x + 1.5 * w, y - 2.4*h, w, h, "ɾ�����β�Ʒ") )
	{	
		status = 9;
	}
	if( button(GenUIID(0), x + 1.5 * w, y - 3.8*h, w, h, "����Ա��֪") )
	{	
		system("Administrator.txt");
	}
	if( button(GenUIID(0), x + 1.5 * w, y - 5.2*h, w, h, "����������") )
	{	
		status = 0;
		display();
	}
}

//��ʾ������������Ʒ 
void drawAdminProduct()
{
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth/8;  
	y = winheight/2; 
	w = winwidth/5;
	
	SetPenColor("Cyan");
	drawLabel(x, (y -= h * 1.2) + fH * 0.7, "�������Ƽ���ƷA");
	
	SetPenColor("Brown");	
	drawLabel(x - fH / 2 - TextStringWidth("���") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "���");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, "01", sizeof("01"));
	
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("�ص�") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "�ص�");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, "HangZhou", sizeof("HangZhou"));
	
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("��������") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "��������");
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
	drawLabel(x - fH / 2 - TextStringWidth("��������") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "��������");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Amount, sizeof(p->Amount));
	
	SetPenColor("Gray");
	drawLabel(x + 4 * h, (y -= h * 2.2) + fH * 0.7, "���Կ����������ϲ�Ʒ���Σ�");
	
	x += winwidth/3.5;
	y = winheight/2;
	
	SetPenColor("Cyan");
	drawLabel(x, (y -= h * 1.2) + fH * 0.7, "�������Ƽ���ƷB");
	
	SetPenColor("Brown");	
	drawLabel(x - fH / 2 - TextStringWidth("���") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "���");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, "02", sizeof("02"));
	
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("�ص�") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "�ص�");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, "NanJing", sizeof("NanJing"));
	
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("��������") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "��������");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h,"May", sizeof("May"));
	
	while(p)
	{
		if(strcmp(p->Num,"02") == 0)
			break;
		p = p->Next;
	}
	SetPenColor("Brown");
	drawLabel(x - fH / 2 - TextStringWidth("��������") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "��������");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Amount, sizeof(p->Amount));
	free(p);
	
	SetPenColor("Black");
} 

//���ƹ���Ա�������ı��� 
void drawAdminBox()
{
	x = winwidth / 12; 
	y = winheight / 1.7; 
	w = winwidth / 1.2; 
	h = GetFontHeight() * 8;
	SetPointSize(35); 
	SetPenColor("Yellow");
	drawBox(x, y, w, h, 1, "������س���׼������ÿλ�˿͵�����", 'C', "red");
	SetPointSize(GetFontHeight()); 
}

//�����û�����˵� 
void drawAdminMenu()
{
	setMenuColors("Dark Gray", "Brown", "Black", "Green", 0);
	
	//�˵��ؼ�����
	static char* menuListSearch[] = { "����",
		"���ص�����",
		"��ʱ������",
		"����",};
	static char* menuListCheck[] = { "��Ʒ����",
		"���Ӳ�Ʒ",
		"ɾ����Ʒ",
		"����",};
	static char* menuListRank[] = { "��Ϣ",
		"����",
		"��Ʒ��", 
		"����",};
		
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
    
	// ��Ϣ�˵�
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

