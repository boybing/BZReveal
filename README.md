BZReveal
==============

[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://raw.githubusercontent.com/ibireme/YYModel/master/LICENSE)&nbsp;
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)&nbsp;
[![Build Status](https://travis-ci.org/ibireme/YYModel.svg?branch=master)](https://travis-ci.org/ibireme/YYModel)&nbsp;
[![codecov.io](https://codecov.io/github/ibireme/YYModel/coverage.svg?branch=master)](https://codecov.io/github/ibireme/YYModel?branch=master)

大家好,BZReveal是一款我写的专门配合Reveal的函数封装.

首先给各位介绍一下Reveal.这是一款各位大神鼎力推荐的软件,它能帮我们快速修改UI尺寸.它的优势就在于模拟器启动后,
可以直接在Reveal中修改frame值,模拟器上所显示的尺寸也会相应改变.不需要重启项目,从而达到热修改预览的效果.
由于xib横展性不是很强,这款软件就帮助了纯代码搭界面的小伙伴们很多很多.

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


BZReveal is one I wrote with pass Reveal the function of packaging.First introduce you to pass Reveal. This is a dear great god strongly recommended software, it can help us to quickly modify the UI size. Its advantage lies in the emulator starts,Can modify frame in the pass Reveal value directly, is shown on the size of the simulator will also be changed accordingly. Don't need to restart the project, thus to achieve the effect of thermal changes preview.Due to xib horizontal malleable is not strong, the software will help the real pure code a lot of a lot of friends.

Modify before:
![image] (https://github.com/boybing/pic/blob/master/reveal1.png)

Revised:![image] (https://github.com/boybing/pic/blob/master/reveal2.png)

Here to offer you pass reveal the link: http://www.jianshu.com/p/1041a4b342f0Pass Reveal native methods need to add package in engineering, is not very convenient. 
Here do not change the project using method of pass Reveal links:http://blog.csdn.net/jhy835239104/article/details/46803769Hope to be of help.

A lot of work after the partner will go to the library, such as masonry, really really pretty good. I write the purpose of this function is to make the layout more simple.Can be directly through the pass reveal shown above the frame layout. Someone will ask, ios native frame method also can be the layout, why bother.Indeed, the native method is an option, but above the adaptation of the equipment or flawed, so I wrote based on autolayout BZReveal.Function USES is introduced: first before use, please at the entrance of a function call in class BZReveal BZScreenSizeSetWidth: Height: function, determine the edit window width.Recommended to write the AppDelegate. Example set by iphoneSe size:![image] (https://github.com/boybing/pic/blob/master/delegate.png)
BZReveal can modify the UI generated by xib and pure code UI autolayout rules.
The following is a storyboard generated view:![image] (https://github.com/boybing/pic/blob/master/stroyboard.png)

Use pass Reveal browse and modify:![image] (https://github.com/boybing/pic/blob/master/storyChangeR.png)
Through function BZLayoutViewWithViewFrame: SurperView: Invariable: modify rules, value is the value of the changes in the pass Reveal:
Under the condition of IphoneSE:![image] (https://github.com/boybing/pic/blob/master/storyboardSe.png)
Iphone6 cases:![image] (https://github.com/boybing/pic/blob/master/storyboardSe.png)
Under the condition of IpadPro iphones only:![image] (https://github.com/boybing/pic/blob/master/storyboardPro.png)

Can see the size will increase or decrease according to the px, accordingly, increase or decrease unnecessary to consider different equipment fit!Premise equipment is almost the same aspect ratio, because the device and the Iphone's aspect ratio is different, there are differences in lead to show results.

Open the function:

'BZScreenSizeSetWidth: Height:'
Initialization setting layout screen size, then according to the size of other screen size equipment control size calculation

'BZSetNextCodeDefaultAtrributes:'
Initial value setting properties to set of attributes, the initial value, then the layout of the will to achieve layout according to the initial value.For example: left magrin distance remains unchanged, even after the screen size change, we the distance from the left is always the same.

'TextViewFontSize:'
Due to the particularity of textView to predetermined textView font size. Don't fill the default font size is 17 Iphone6

UIView category

'InitWithFrame: SurperView:'
Create the object and the object using the configuration of the page layout code, must fill in SuperView.

'InitWithFrame: SurperView: Invariable:'
Create the object and the object using the configuration of the page layout code, must fill in SuperView.Attribute is optional, can control the up and down or so margin is constant and font do scaling, size doesn't zoom control.

'BZLayoutViewWithViewFrame: SurperView:'
The layout code for object page arrangement, must fill in SuperView.

'BZLayoutViewWithViewFrame: SurperView: Invariable:'
The layout code for object page arrangement, must fill in SuperView.Attribute is optional, can control the up and down or so margin is constant and font do scaling, size doesn't zoom control.

'AddSubview: WithFrame:'
When addsubview objects using layout code page arrangement, must fill in SuperView.Attribute is optional, can control the up and down or so margin is constant and font do scaling, size doesn't zoom control.

'AddSubview: WithFrame: Invariable:'
At addsubview object using the configuration of the page layout code, must fill in SuperView.Attribute is optional, can control the up and down or so margin is constant and font do scaling, size doesn't zoom control.

UIViewController category

'BZLayoutIpadWillChangeWhenTransitionRegular: Compact:'
Judgment depending on the type of equipment to load the relevant page configuration code, similar to the sizeclass, this is for the relation of screen

'BZLayoutIphoneWillChangeWhenTransitionRegular: Compact:'
Judgment depending on the type of equipment to load the relevant page configuration code, similar to the sizeclass, this is for the Iphone the relation of screenCombining.

these functions can quickly solve all the questions about the UI configuration, have valuable opinions or Suggestions please contact me. Email:ybxxx070@126.com
