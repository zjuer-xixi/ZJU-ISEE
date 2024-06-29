typedef struct product{
	char Num[100];         //产品编号 
	char Location[100];    //出行地点 
	char Date[20];         //出行日期
	char Information[1000];//产品信息 
	int Amount;            //销售数量 
	char Price[10];        //产品价格 
	int SubFlag;           //0表示未被预订，1表示已被预订 
	struct product* Next;
}Product;//图书

extern Product* Product_head;
extern Product* Search_product; 
extern Product* Temp_product;

Product* LoadProduct();
void drawProduct(double fH, double x, double y, double w, double h, Product* p); 
