## BZReveal
* Layout by an easy way

## Contents
* Getting Started
    * Reveal is a UI analysis debug software, it supports preview pages heat change. And BZReveal is on the basis of the pass Reveal, modify the UI layout code quickly, improve the efficiency of programming tools.
    * It controls will be according to the screen size scaling, including controls within the text. Of course you also by custom interface, control remain the same. Also encapsulates the sizeClass, can deal with most of the layout problem.
* Comment API
	* [BZReveal.h](#BZReveal.h)
	* [BZRevealSize.h](#BZRevealSize.h)
	* [UIViewController+BZSizeClass.h](#UIViewController+BZSizeClass.h)
	* [UIView+BZReveal.h](#UIView+BZReveal.h)

## <a id="Support what kinds of controls to refresh"></a>Support what kinds of controls to refresh
* All inherited from the UIView controls

## <a id="How to use MJRefresh"></a>How to use MJRefresh
* Clone or download the program
* Manual import：
    * Drag All files in the `BZReveal` folder to project
    * Import the main file：`#import "BZReveal.h"`
* the AppDelegate choosing the initial setup screen size (from the perspective of adaptation, we suggest the smallest screen size)
    

## BZReveal
* 轻松布局

## 内容
* 开始介绍
    * Reveal 是一款UI分析调试软件,它支持页面热修改预览.而BZReveal是在Reveal的基础上,快速修改UI布局代码,提高编程效率的工具.
    * 有了它控件会根据屏幕大小等比例缩放,也包括控件内的文字.当然你也通过自定义接口,让控件保持原样.还封装了有关sizeClass,能应对大多的布局问题.
* 包含接口
	* [BZReveal.h](#BZReveal.h)
	* [BZRevealSize.h](#BZRevealSize.h)
	* [UIViewController+BZSizeClass.h](#UIViewController+BZSizeClass.h)
	* [UIView+BZReveal.h](#UIView+BZReveal.h)

## <a id="Support what kinds of controls to refresh"></a>支持什么样的控件
* 所有继承自UIView的控件

## <a id="How to use BZReveal"></a>BZReveal使用方法
* 克隆或下载项目.
* 手动导入:
    *“BZReveal”文件夹中所有文件拖到项目
    * 加载主文件:“#import“BZReveal.h”
* 在AppDelegate中选择初始设置的屏幕大小(从适配的角度,建议选择最小的屏幕尺寸)

## <a id="BZReveal.h"></a>BZReveal.h
```objc
#define SCW [BZScreen ScreensharedManager].scWidth
#define SCH [BZScreen ScreensharedManager].scHeight
#define SW [UIScreen mainScreen].bounds.size.width
#define SH [UIScreen mainScreen].bounds.size.height
@interface BZRevealDefalut : NSObject
/**
 DefaultTop Flag
 */
@property(assign,nonatomic) BOOL DefaultTop;
/**
 DefaultLeft Flag
 */
@property(assign,nonatomic) BOOL DefaultLeft;
/**
 DefaultRight Flag
 */
@property(assign,nonatomic) BOOL DefaultRight;
/**
 DefaultBottom Flag
 */
@property(assign,nonatomic) BOOL DefaultBottom;
/**
 DefaultSize Flag
 */
@property(assign,nonatomic) BOOL DefaultSize;
/**
 DefaultFont Flag
 */
@property(assign,nonatomic) BOOL DefaultFont;
@end
@interface BZReveal : NSObject

/**
 If you decide the width and height of the view , 
 you may not have to add width height every time.

 @param wid Screen width
 @param hei Screen height
 */
+(void)BZScreenSizeSetWidth:(CGFloat)wid
                     Height:(CGFloat)hei;


/**
 If you want the next view will have custom invariable atrributes,
 you may use this method.

 @param md  you can add defalut type
 */
+(void)BZSetNextCodeDefaultAtrributes:(BZRevealDefalut * _Nullable )md;


/**
 If you want to use textview auto size you have to set it.
 */
+(void)TextViewFontSize:(CGFloat)size;
```

## <a id="BZRevealSize.h"></a>BZRevealSize.h
```objc
/**
 Screen model
 */
@interface BZScreen : NSObject
+(BZScreen * _Nonnull)ScreensharedManager;

/**
 ScreenWidth attribute
 If you want use method without SCreenW,
 you should add the number at first.
 */
@property(assign,nonatomic) CGFloat scWidth;


/**
 ScreenWidth attribute
 If you want use method without SCreenW,
 you should add the number at first.
 */
@property(assign,nonatomic) CGFloat width;

/**
 ScreenHeight attribute
 If you want use method without ScreenH,
 you should add the number at first.
 */
@property(assign,nonatomic) CGFloat scHeight;

/**
 ScreenHeight attribute
 If you want use method without ScreenH,
 you should add the number at first.
 */
@property(assign,nonatomic) CGFloat height;

/**
 InvariableTop Flag
 */
@property(assign,nonatomic) BOOL InvariableTop;

/**
 DefaultTop Flag
 */
@property(assign,nonatomic) BOOL DefaultTop;

/**
 InvariableLeft Flag
 */
@property(assign,nonatomic) BOOL InvariableLeft;

/**
 DefaultLeft Flag
 */
@property(assign,nonatomic) BOOL DefaultLeft;

/**
 InvariableRight Flag
 */
@property(assign,nonatomic) BOOL InvariableRight;

/**
 DefaultRight Flag
 */
@property(assign,nonatomic) BOOL DefaultRight;

/**
 InvariableBottom Flag
 */
@property(assign,nonatomic) BOOL InvariableBottom;

/**
 DefaultBottom Flag
 */
@property(assign,nonatomic) BOOL DefaultBottom;

/**
 InvariableSize Flag
 */
@property(assign,nonatomic) BOOL InvariableSize;

/**
 DefaultSize Flag
 */
@property(assign,nonatomic) BOOL DefaultSize;

/**
 InvariableFont Flag
 */
@property(assign,nonatomic) BOOL InvariableFont;

/**
 DefaultFont Flag
 */
@property(assign,nonatomic) BOOL DefaultFont;

/**
 textViewSize
 */
@property(assign,nonatomic) CGFloat textViewFontSize;
@end

/**
 Size model
 */
@interface BZSize : NSObject
@property(assign,nonatomic) CGFloat height;
@property(assign,nonatomic) CGFloat originalHeight;
@property(assign,nonatomic) CGFloat width;
@property(assign,nonatomic) CGFloat originalWidth;
@property(assign,nonatomic) CGFloat pointX;
@property(assign,nonatomic) CGFloat originalLeft;
@property(assign,nonatomic) CGFloat pointY;
@property(assign,nonatomic) CGFloat originalTop;
@property(assign,nonatomic) CGFloat originalRight;
@property(assign,nonatomic) CGFloat originalBottom;
@property(assign,nonatomic) CGFloat font;
@property(assign,nonatomic) CGFloat originalFont;
@end

@interface BZRevealInvariable : NSObject

/**
 BZRevealAttribute
 */
@property(assign,nonatomic) BZRevealAttribute attr;

/**
 BZRevealType
 */
@property(assign,nonatomic) BZRevealType type;

/**
 set BZRevealAttribute and BZRevealType

 @param attr BZRevealAttribute
 @param type BZRevealType
 */
-(void)BZRevealInvariableSetAttr:(BZRevealAttribute)attr Type:(BZRevealType) type;
@end

@interface BZRevealSize : UIView

/**
 Analyze the correct Frame to the screen
 
 @param sw Screen weight of the aimed screen;
 @param sh Screen height of the aimed screen;
 @param fr Frame of the view
 
 @return Analyzed data
 */
+(BZSize * _Nonnull)analyzeRightFrameWithSCreenW:(NSInteger)sw
                                ScreenH:(NSInteger)sh
                              ViewFrame:(CGRect)fr;

/**
 Analyze the correct Frame to the screen
 
 @param sw Screen weight of the aimed screen;
 @param sh Screen height of the aimed screen;
 @param fr Frame of the view
 @param font font size
 
 @return Analyzed data
 */
+(BZSize * _Nonnull)analyzeRightFrameWithSCreenW:(NSInteger)sw
                                ScreenH:(NSInteger)sh
                              ViewFrame:(CGRect)fr
                                   font:(CGFloat)font;

/**
 If view already had the constraints. At first, we should clear them
 
 @param vw View we aimed at
 */
+(void)constraintsClear:(UIView * _Nonnull)vw;


/**
 The method which judged ScreenSize has been decided or not
 
 @return Yes or No
 */
+(BOOL)hadSetScreenSize:(BZScreen * _Nonnull)sc;

/**
 Invariable type Analyze
 
 @param type Invariable type
 @param attr Invariable attr
 */
+(void)BZtypeAnalyzeType:(BZRevealInvariable * _Nullable )type attributes:(BZRevealInvariable * _Nullable )attr;
@end
```

## <a id="UIViewController+BZSizeClass.h"></a>UIViewController+BZSizeClass.h
```objc
typedef void (^Trans) ();
@interface UIViewController (BZSizeClass)

/**
 When Pad is Regular
 */
@property (nonatomic, strong)Trans padr;

/**
 When Pad is Compact
 */
@property (nonatomic, strong)Trans padc;

/**
 When Phone is Regular
 */
@property (nonatomic, strong)Trans phoner;

/**
 When Phone is Compact
 */
@property (nonatomic, strong)Trans phonec;

/**
 At the state of Pad Regular or Compact,change the autolayout

 @param padr Regular
 @param padc Compact
 */
-(void)BZLayoutIpadWillChangeWhenTransitionRegular:(void(^)(void))padr Compact:(void(^)(void))padc;

/**
  At the state of phone Regular or Compact,change the autolayout

 @param Iphoner Regular
 @param padc    Compact
 */
-(void)BZLayoutIphoneWillChangeWhenTransitionRegular:(void(^)(void))Iphoner Compact:(void(^)(void))padc;
@end
```

## <a id="UIView+BZReveal.h"></a>UIView+BZReveal.h
```objc
@interface UIView (BZReveal)

/**
 Autolayout at init time and must had the screenSize

 @param frame Frame of the view
 @param view  SuperView thar we want to refer to

 @return view
 */
-(instancetype _Nonnull)initWithFrame:(CGRect)frame
        SuperView:( UIView * _Nonnull )view;

/**
 Autolayout at init time and must had the screenSize
 
 @param frame Frame of the view
 @param view  SuperView thar we want to refer to
 @param md Invariable types and attributes
 
 @return view
 */
-(instancetype _Nonnull)initWithFrame:(CGRect)frame
        SuperView:( UIView * _Nonnull )view
        Invariable:( BZRevealInvariable * _Nullable )md;

/**
 Autolayout by the easy way and must had the screenSize
 
 @param fr Frame of the view
 @param vw SuperView thar we want to refer to
 */
-(void)BZLayoutViewWithViewFrame:(CGRect)fr
                      SuperView:( UIView * _Nonnull )vw;

/**
 Autolayout by the easy way and must had the screenSize
 
 @param fr Frame of the view
 @param vw SuperView thar we want to refer to
 @param md Invariable types and attributes
 */
-(void)BZLayoutViewWithViewFrame:(CGRect)fr
                      SuperView:( UIView * _Nonnull )vw
                      Invariable:(BZRevealInvariable * _Nullable )md;

/**
 We can change the constranits at addsubview time
 
 @param fr Frame
 @param svw Subview
 */
-(void)addSubview:(UIView * _Nonnull)svw
        WithFrame:(CGRect)fr;

/**
 We can change the constranits at addsubview time
 
 @param fr Frame
 @param svw Subview
 @param md Invariable types and attributes
 */
-(void)addSubview:(UIView * _Nonnull)svw
        WithFrame:(CGRect)fr
       Invariable:(BZRevealInvariable * _Nullable )md;

@end
```
修改前:
![image](https://github.com/boybing/pic/blob/master/reveal1.png)
修改后:
![image](https://github.com/boybing/pic/blob/master/reveal2.png)
 
 
这边给大家提供reveal介绍链接:http://www.jianshu.com/p/1041a4b342f0

Reveal原生方法需要在工程添加包,不是很方便.这边提供不修改工程使用Reveal的方法链接:
http://blog.csdn.net/jhy835239104/article/details/46803769
希望对大家有所帮助.

之后的工作很多伙伴会交给masonry之类的库,确实的确蛮好用的.我编写这个函数的目的是让排版更加简单.
可直接通过reveal上面显示的frame布局.有人会问,ios原生的frame方法也可以进行布局,何必多此一举.
的确,原生方法也是一种选择,但是在设备的适配上面还是有缺陷的,所以我写了基于autolayout的BZReveal.

函数使用介绍:首先在使用前请在函数入口处调用类BZReveal中的BZScreenSizeSetWidth: Height:函数,确定编辑窗口的长宽.
推荐写在AppDelegate中.例子是以iphoneSe的尺寸来设置的:
![image](https://github.com/boybing/pic/blob/master/delegate.png)

BZReveal可以修改xib生成的UI以及纯代码UI的autolayout规则.

以下是storyboard生成的view:
![image](https://github.com/boybing/pic/blob/master/stroyboard.png)

使用Reveal浏览并修改:
![image](https://github.com/boybing/pic/blob/master/storyChangeR.png)

通过函数BZLayoutViewWithViewFrame: SurperView: Invariable: 修改规则,值是Reveal中修改的值:
IphoneSE的情况下:
![image](https://github.com/boybing/pic/blob/master/storyboardSe.png)

Iphone6的情况下:
![image](https://github.com/boybing/pic/blob/master/storyboardSe.png)

IpadPro只适配iphone的情况下:
![image](https://github.com/boybing/pic/blob/master/storyboardPro.png)
可以看到尺寸会根据px的增减,做相应的增减,不必要再考虑不同设备的适配了!
前提是设备的长宽比基本一致,是因为Ipad和Iphone的长宽比是不同的,导致显示的结果有差异.

开放函数:

BZScreenSizeSetWidth:Height:
初始化设置布局屏幕大小,之后会根据此大小对别的屏幕大小的设备控件大小进行计算

BZSetNextCodeDefaultAtrributes:
设置属性初始值,对属性初始值进行设置,之后的布局会根据初始值来实现布局.
例如:左magrin的距离不变,之后就算屏幕大小改变,我们离左边的距离始终是不变的.

TextViewFontSize:
由于textView的特殊性,要预先确定textView的字体大小.不填默认Iphone6下的字体大小是17

UIView分类

initWithFrame:SurperView:
创建对象并对对象用layout代码进行页面的排布,必须填写SuperView.

initWithFrame: SurperView: Invariable:
创建对象并对对象用layout代码进行页面的排布,必须填写SuperView.
属性选填,可以控制上下左右margin不变以及字体不做缩放,控件大小不缩放.

BZLayoutViewWithViewFrame:SurperView:
对对象用layout代码进行页面的排布,必须填写SuperView.

BZLayoutViewWithViewFrame:SurperView:Invariable:
对对象用layout代码进行页面的排布,必须填写SuperView.
属性选填,可以控制上下左右margin不变以及字体不做缩放,控件大小不缩放.

addSubview:WithFrame:
在addsubview时对象用layout代码进行页面的排布,必须填写SuperView.
属性选填,可以控制上下左右margin不变以及字体不做缩放,控件大小不缩放.

addSubview:WithFrame:Invariable:
在addsubview时对对象用layout代码进行页面的排布,必须填写SuperView.
属性选填,可以控制上下左右margin不变以及字体不做缩放,控件大小不缩放.


UIViewController分类

BZLayoutIpadWillChangeWhenTransitionRegular:Compact:
根据设备类型判断加载有关的页面排布代码,类似于sizeclass,这个是针对Ipad横竖屏的

BZLayoutIphoneWillChangeWhenTransitionRegular:Compact:
根据设备类型判断加载有关的页面排布代码,类似于sizeclass,这个是针对Iphone横竖屏的

结合这些函数能快速解决所有有关UI排布问题,有宝贵的意见或建议请联系我.Email:ybxxx070@126.com


