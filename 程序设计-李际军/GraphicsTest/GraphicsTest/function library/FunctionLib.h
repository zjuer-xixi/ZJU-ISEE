#ifndef _FUNCTIONLIB_
#define _FUNCTIONLIB_

//�ؼ��ĳߴ� 
extern double x;   //x���� 
extern double y;   //y���� 
extern double w;   //��� 
extern double h;   //�߶� 
extern double fH;  //�����С 

extern double label_x;

//һ����Ʒ��ȫ����Ϣ 
typedef struct product{
	char Num[10];         //��Ʒ��� 
	char Location[15];    //���еص� 
	char Date[10];        //��������
	char Information[80]; //��Ʒ��Ϣ 
	char Amount[10];      //�������� 
	char Price[10];       //��Ʒ�۸� 
	char SubFlag[5];      //Flase��ʾδ��Ԥ����True��ʾ�ѱ�Ԥ�� 
	struct product* Next;
}Product;

// ���ڳߴ�
extern double winwidth, winheight;   

typedef enum {
	LabelTimer,
} MyTimer;

/*���ڼ�¼ϵͳ״̬ ��0������������ ��1��ʾ�����û������� ��2��ʾ���ڹ���Ա�����棻 3��ʾ���ڰ��ص��������棻4��ʾ���ڰ�ʱ��
�������棻5��ʾ����Ԥ����Ʒ���棻6��ʾ�˶���Ʒ���棻7��ʾ����������棻8��ʾ�����������β�Ʒ���棻9��ʾ����ɾ�����β�Ʒ���� */
extern int status;         			

// ��ʼ�����ں�ͼ��ϵͳ
void InitWindow();

extern Product* Head_Product;
extern Product* Search_Product; 
extern Product* Temp_Product;
extern Product* Order_Product;

extern char input_of_search[15];
extern SearchFlag;     ////0��Ҫ���������Ϣ��1�����������������-1û�в��ҵ�������� 

extern int ReserveFlag;//0���������Ʒ��Ž��棬1��ʾԤ���ɹ����棬2��ʾ�Ѿ�Ԥ������Ʒ��-1�����Ҳ�����Ʒ���� 
extern char ReserveNum[10];

extern int UnsubFlag;  //0���������Ʒ��Ž��棬1��ʾ�˶��ɹ����棬2��ʾδԤ�����ò�Ʒ��-1�����Ҳ�����Ʒ����     
extern char UnsubNum[10];

extern int OrderFlag;  //������������¼��0��ʾѡ������ʽ���棬1��ʾ��ʾ���������� 
extern int OrderWay;   //���ڼ�¼����ʽ��1��ʾ���۸�����2��ʾ���������� 

extern int NewAddFlag; //�������Ӳ�Ʒ�����¼��0����������棬1�������ӳɹ����棬-1���ڱ���Ѵ��ڽ���

extern int DeleteFlag; //����ɾ����Ʒ�����¼��0����������棬1����ɾ���ɹ����棬-1���ڱ�Ų���ȷ����
extern char  DeleteNum[10];

Product* LoadProduct();
Product* PreProduct(Product* p1, Product* p2);
void drawProduct(double fH, double x, double y, double w, double h, Product* p); 
void ProductOrder();
void display();
void fprintProduct(Product* p);
// �û����ַ��¼���Ӧ����
void CharEventProcess(char ch);

// �û��ļ����¼���Ӧ����
void KeyboardEventProcess(int key, int event);

// ��ʱ������������provided in libgraphics
void startTimer(int id, int timeinterval);
void mytimer(int  timerID); 

// �û�������¼���Ӧ����
void MouseEventProcess(int x, int y, int button, int event);

void RollingSlogan();
#endif
