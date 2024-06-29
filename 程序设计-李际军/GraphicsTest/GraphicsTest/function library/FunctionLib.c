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
#include "interface7.h"
#include "interface8.h"
#include "interface9.h"
#include "FunctionLib.h"

#include <stdio.h>
#include <wchar.h>
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
#include <math.h>

double x;
double y;
double w;
double h;
double fH;

double label_x = 1.0;

int SearchFlag = 0;  //0��Ҫ���������Ϣ��1�����������������-1û�в��ҵ��������
char input_of_search[15] = "";

Product* Head_Product = NULL;
Product* Search_Product = NULL;
Product* Temp_Product = NULL;
Product* Order_Product = NULL;
 
double winwidth, winheight;   // ���ڳߴ�
int status = 0;   //��¼ϵͳ״̬  

int ReserveFlag = 0;//0���������Ʒ��Ž��棬1��ʾԤ���ɹ����棬2��ʾ�Ѿ�Ԥ������Ʒ��-1�����Ҳ�����Ʒ����
char ReserveNum[10] = "";

int UnsubFlag = 0;//0���������Ʒ��Ž��棬1��ʾ�˶��ɹ����棬2��ʾδԤ�����ò�Ʒ��-1�����Ҳ�����Ʒ����
char UnsubNum[10] = "";

int OrderWay;//1��ʾ���۸�����2��ʾ����������
int OrderFlag = 0;

int NewAddFlag = 0;//0���������Ʒ��Ž��棬1���ڳɹ����棬-1���ڲ�Ʒ����ظ�����

int DeleteFlag = 0;//0���������Ʒ��Ž��棬1����ɾ���ɹ����棬-1���ڲ�Ʒ��Ų����ڽ���
char  DeleteNum[10] = ""; 

// ��ʱ������������provided in libgraphics
void startTimer(int id, int timeinterval);

// �û����ַ��¼���Ӧ����
void CharEventProcess(char ch)
{
	uiGetChar(ch); // GUI�ַ�����
	display(); //ˢ����ʾ
}

// �û��ļ����¼���Ӧ����
void KeyboardEventProcess(int key, int event)
{
	uiGetKeyboard(key, event); // GUI��ȡ����
	display(); // ˢ����ʾ
}

// �û�������¼���Ӧ����
void MouseEventProcess(int x, int y, int button, int event)
{
	uiGetMouse(x, y, button, event); //GUI��ȡ���
	display(); // ˢ����ʾ
}

// ��ʼ�����ں�ͼ��ϵͳ
void InitWindow() 
{
	//���ڳߴ����� 
	SetWindowTitle("���β�Ʒ����ϵͳ");
	SetWindowSize(15, 10);
	InitGraphics();

	// ��ô��ڳߴ�
	winwidth = GetWindowWidth();
	winheight = GetWindowHeight();

	// ע��ʱ����Ӧ����
	registerCharEvent(CharEventProcess);        // �ַ�
	registerKeyboardEvent(KeyboardEventProcess);// ����
	registerMouseEvent(MouseEventProcess);      // ���
}

//������ṹ˳���ȡ��Ʒ��Ĳ�Ʒ����������ͷ�ڵ�					 
Product* LoadProduct()
{
	int i, j;
	Product* head = NULL;
	Product* tail = NULL;
	Product* p = NULL;
	int size = sizeof(Product);
	p = (Product*)malloc(size);

	FILE* fp;
	fp = fopen("Data.txt", "r");
	if (fp == NULL) exit(-1);
	while (!feof(fp)) {
		fscanf(fp, "%s", p->Num);
		fscanf(fp, "%s", p->Location);
		fscanf(fp, "%s", p->Date);
		fscanf(fp, "%s", p->Price);
		fgetc(fp);
		fgets(p->Information, sizeof(p->Information), fp);
		fscanf(fp, "%s", p->Amount);
		fscanf(fp, "%s", p->SubFlag);
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

//����Ʒ��Ϣ��ʾ�ڽ����� 
void drawProduct(double fH, double x, double y, double w, double h, Product* p)
{
	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("���") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "���");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Num, sizeof(p->Num));

	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("�ص�") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "�ص�");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Location, sizeof(p->Location));
	
	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("�۸�") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "�۸�");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Price, sizeof(p->Price));

	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("��������") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "��������");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Date, sizeof(p->Date));
	
	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("��������") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "��������");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Amount, sizeof(p->Amount));
	
	SetPenColor("Black");
	drawLabel(x - fH / 2 - TextStringWidth("�������") - 1.2 * h, (y -= h * 1.2) + fH * 0.7, "�������");
	textbox(GenUIID(0), x - 1.2 * h, y, w, h, p->Information, sizeof(p->Information));

	SetPenColor("Gray");
}

//���ص�ǰ�ڵ����һ�ڵ� 
Product* PreProduct(Product* p1, Product* p2)
{
	Product* m;
	m = p2;
	while (m) {
		if (m->Next == p1) 
		break;
		m = m->Next;
	}
	if(m != NULL) return m; 
	else return NULL;
}

void display()
{ 	
	if (status == 0) //���β�Ʒ����ϵͳ������ 
	{
		DisplayClear();
		drawMainButtons();
		drawMainBox();
		RollingSlogan();
	} 
	if (status == 1) //�û������� 
	{
		
		DisplayClear();
		drawUserButtons();
		drawUserMenu();
		drawUserProduct(fH, x, y, w, h, Temp_Product);
	} 
	if (status == 2) //����Ա������ 
	{
		DisplayClear();
		drawAdminButtons();
		drawAdminProduct();
		drawAdminBox();
		drawAdminMenu();
	}
	if (status == 3) //�ص��������� 
	{
		DisplayClear();
		drawLocationSearchText();
		drawLocationSearchButtons();
		RollingSlogan(); 
	} 
	if (status == 4) //������������ 
	{
		DisplayClear();
		drawDateSearchText();
		drawDateSearchButtons();
		RollingSlogan(); 
	} 
	if (status == 5) //Ԥ������ 
	{
		DisplayClear();
		drawReserveText();
		drawReserveButtons();
		RollingSlogan();
	} 
	if (status == 6) //�˶����� 
	{
		DisplayClear();
		drawUnsubText();
		drawUnsubButtons();
		RollingSlogan();
	} 
	if (status == 7) //������� 
	{
		DisplayClear();
		drawOrderText();
		drawOrderButtons();
		RollingSlogan();
	} 
	if (status == 8) //������Ʒ���� 
	{
		DisplayClear();
		drawAddButtons(); 
 		drawAddText();
 		RollingSlogan();
	}
	if (status == 9) //ɾ����Ʒ���� 
	{
		DisplayClear();
		drawDeleteText();
		drawDeleteButtons(); 
		RollingSlogan();
	} 		
}

//��дtxt�ı����� 
void fprintProduct(Product* p)
{
	FILE* fp;
	Product* p1 = p;
	fp = fopen("Data.txt", "w");//����ļ���ֻд��
	while (p1)
	{
		if(p1->Next != NULL)
		{
			fputs(p1->Num, fp); fputc('\n', fp);                  
			fputs(p1->Location, fp); fputc('\n', fp);                     
			fputs(p1->Date, fp); fputc('\n', fp);                 
			fputs(p1->Price, fp); fputc('\n', fp);                
			fputs(p1->Information, fp);               
			fputs(p1->Amount, fp); fputc('\n', fp); 
			fputs(p1->SubFlag, fp);fputc('\n', fp);
		}
		else
		{
			fputs(p1->Num, fp); fputc('\n', fp);                  
			fputs(p1->Location, fp); fputc('\n', fp);                     
			fputs(p1->Date, fp); fputc('\n', fp);                 
			fputs(p1->Price, fp); fputc('\n', fp);                
			fputs(p1->Information, fp);               
			fputs(p1->Amount, fp); fputc('\n', fp); 
			fputs(p1->SubFlag, fp);
		}
		p1 = p1->Next;
	}
	fclose(fp);
}

void mytimer(int  timerID)
{
	label_x += 0.5;
	if (label_x > 12.0) 
		label_x = 1.0;
	display();
}

void RollingSlogan()
{	registerTimerEvent(mytimer);
	startTimer(LabelTimer, 150);
	SetPenColor("Black");
	drawRectangle(0, winheight - 2 * GetFontHeight(), winwidth, 2 * GetFontHeight(), 1);
	SetPointSize(20);
	SetPenColor("Yellow");
	drawLabel(label_x, winheight - 1.22 * GetFontHeight(), "CiCi�����绶ӭ��");
	SetPointSize(GetFontHeight()); 
}
