#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface0.h"
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
 
//���������水ť
void drawMainButtons() 
{
	
	fH = GetFontHeight();
	h = fH * 2;  
	x = winwidth / 2.5;
	y = winheight / 2 - h;
	w = winwidth / 5; 

	setButtonColors("Dark Gray", "Cyan", "Orange", "white", 1);
	if (button(GenUIID(0), x - 0.6 * w , y - 2 * h, w, h,"�û���¼"))
	{
		status = 1;
		display();
	} 
		
	if (button(GenUIID(1), x - 0.6 * w , y - 3.5 * h, w, h,"����Ա��½"))
	{
		status = 2;
		display();
	}
	
	if (button(GenUIID(0), x + w * 0.6, y - 2 * h, w, h, "����"))
	{
		system("Help.txt");
	}
	
	if (button(GenUIID(1), x + w * 0.6, y - 3.5 * h, w, h, "�˳�"))
	{
		exit(-1); 
	}		
} 

//�������������ı������������ 
void drawMainBox()
{
	x = winwidth / 4; 
	y = winheight / 2; 
	w = winwidth / 2; 
	h = GetFontHeight() * 8;
	SetPointSize(30); 
	SetPenColor("Orange");
	drawBox(x, y, w, h, 0, "���β�Ʒ����ϵͳ", 'C', "red");
	SetPointSize(GetFontHeight()); 
}

