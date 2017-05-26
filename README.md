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


