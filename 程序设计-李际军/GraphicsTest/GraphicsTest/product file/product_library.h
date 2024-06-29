typedef struct product{
	char Num[100];         //��Ʒ��� 
	char Location[100];    //���еص� 
	char Date[20];         //��������
	char Information[1000];//��Ʒ��Ϣ 
	int Amount;            //�������� 
	char Price[10];        //��Ʒ�۸� 
	int SubFlag;           //0��ʾδ��Ԥ����1��ʾ�ѱ�Ԥ�� 
	struct product* Next;
}Product;//ͼ��

extern Product* Product_head;
extern Product* Search_product; 
extern Product* Temp_product;

Product* LoadProduct();
void drawProduct(double fH, double x, double y, double w, double h, Product* p); 
