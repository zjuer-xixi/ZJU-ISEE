#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "imgui.h"
#include "interface0.h"
#include "interface1.h"
#include "interface2.h"
#include "interface3.h"
#include "interface4.h"
#include "interface5.h"
#include "interface6.h"
#include "product_library.h"
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

Product* Product_head = NULL;
Product* Search_product = NULL;
Product* Temp_product = NULL;

Product* LoadProduct()
{
	int i, j;
	Product* head = NULL;
	Product* tail = NULL;
	Product* p = NULL;
	int size = sizeof(Product);
	p = (Product*)malloc(size);

	FILE* fp;
	char path[100] = "Data.txt";
	fp = fopen(path, "r");
	if (fp == NULL) exit(-1);
	while (!feof(fp)) {
		fscanf(fp, "%s", p->Num);
		fscanf(fp, "%s", p->Location);
		fscanf(fp, "%s", p->Date);
		fscanf(fp, "%s", &p->Price);
		fscanf(fp, "%s", p->Information);
		fscanf(fp, "%d", &p->Amount);
		p->Next = NULL;
		if (head == NULL) {
			head = p;
		}
		else
			tail->Next = p;
		tail = p;
		p = (Product*)malloc(size);
	}
	tail->Next = NULL;
	fclose(fp);
	return head;
}

void drawProduct(double fH, double x, double y, double w, double h, Product* p)
{
	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("编号") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "编号");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Num, sizeof(p->Num));

	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("地点") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "地点");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Location, sizeof(p->Location));
	
	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("价格") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "价格");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Price, sizeof(p->Price));

	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("出行日期") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "出行日期");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Date, sizeof(p->Date));
	
	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("详情介绍") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "详情介绍");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Information, sizeof(p->Information));

	SetPenColor("Gray");
}
