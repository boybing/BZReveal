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

## <a id="How to use BZReveal"></a>How to use BZReveal
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

## Examples
* The AppDelegate. h determine the edit screen size
![image](https://github.com/boybing/pic/blob/master/delegate.png)
* Stroyboard defined in the view
![image](https://github.com/boybing/pic/blob/master/stroyboard.png)
* Pass reveal hot change the view
![image](https://github.com/boybing/pic/blob/master/storyChangeR.png)
* After data editing in the iphone SE simulator
![image](https://github.com/boybing/pic/blob/master/storyboardSe.png)
* After data editing in the ipad pro simulator
![image](https://github.com/boybing/pic/blob/master/storyboardPro.png)
