#ifndef _FUNCTIONLIB_
#define _FUNCTIONLIB_

//控件的尺寸 
extern double x;   //x坐标 
extern double y;   //y坐标 
extern double w;   //宽度 
extern double h;   //高度 
extern double fH;  //字体大小 

extern double label_x;

//一个产品的全部信息 
typedef struct product{
	char Num[10];         //产品编号 
	char Location[15];    //出行地点 
	char Date[10];        //出行日期
	char Information[80]; //产品信息 
	char Amount[10];      //销售数量 
	char Price[10];       //产品价格 
	char SubFlag[5];      //Flase表示未被预订，True表示已被预订 
	struct product* Next;
}Product;

// 窗口尺寸
extern double winwidth, winheight;   

typedef enum {
	LabelTimer,
} MyTimer;

/*用于记录系统状态 ：0代表处于主界面 ；1表示处于用户主界面 ；2表示处于管理员主界面； 3表示处于按地点搜索界面；4表示处于按时间
搜索界面；5表示处于预定产品界面；6表示退订产品界面；7表示处于排序界面；8表示处于增加旅游产品界面；9表示处于删除旅游产品界面 */
extern int status;         			

// 初始化窗口和图形系统
void InitWindow();

extern Product* Head_Product;
extern Product* Search_Product; 
extern Product* Temp_Product;
extern Product* Order_Product;

extern char input_of_search[15];
extern SearchFlag;     ////0需要输入查找信息；1将所查找内容输出；-1没有查找到相关内容 

extern int ReserveFlag;//0处于输入产品编号界面，1表示预定成功界面，2表示已经预订过产品；-1处于找不到产品界面 
extern char ReserveNum[10];

extern int UnsubFlag;  //0处于输入产品编号界面，1表示退订成功界面，2表示未预订过该产品；-1处于找不到产品界面     
extern char UnsubNum[10];

extern int OrderFlag;  //用于排序界面记录，0表示选择排序方式界面，1表示显示排序结果界面 
extern int OrderWay;   //用于记录排序方式，1表示按价格排序，2表示按销量排序 

extern int NewAddFlag; //用于增加产品界面记录，0处于输入界面，1处于增加成功界面，-1处于编号已存在界面

extern int DeleteFlag; //用于删除产品界面记录，0处于输入界面，1处于删除成功界面，-1处于编号不正确界面
extern char  DeleteNum[10];

Product* LoadProduct();
Product* PreProduct(Product* p1, Product* p2);
void drawProduct(double fH, double x, double y, double w, double h, Product* p); 
void ProductOrder();
void display();
void fprintProduct(Product* p);
// 用户的字符事件响应函数
void CharEventProcess(char ch);

// 用户的键盘事件响应函数
void KeyboardEventProcess(int key, int event);

// 计时器启动函数，provided in libgraphics
void startTimer(int id, int timeinterval);
void mytimer(int  timerID); 

// 用户的鼠标事件响应函数
void MouseEventProcess(int x, int y, int button, int event);

void RollingSlogan();
#endif
