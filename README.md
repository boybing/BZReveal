# BZReveal
大家好,BZReveal是一款我写的专门配合Reveal的函数封装.

首先给各位介绍一下Reveal.这是一款各位大神鼎力推荐的软件,它能帮我们快速修改UI尺寸.它的优势就在于模拟器启动后,
可以直接在Reveal中修改frame值,模拟器上所显示的尺寸也会相应改变.不需要重启项目,从而达到热修改预览的效果.
由于xib横展性不是很强,这款软件就帮助了纯代码搭界面的小伙伴们很多很多.

修改前:
     ![image](https://github.com/boybing/BZReveal/blob/master/reveal1.png)
修改后:
     ![image](https://github.com/boybing/BZReveal/blob/master/reveal2.png)
 
 
这边给大家提供reveal介绍链接:http://security.ios-wiki.com/issue-3-4/

Reveal原生方法需要在工程添加包,不是很方便.这边提供不修改工程使用Reveal的方法链接:
http://blog.csdn.net/jhy835239104/article/details/46803769
希望对大家有所帮助.

之后的工作很多伙伴会交给masonry之类的库,确实的确蛮好用的.我编写这个函数的目的是让排版更加简单.
可直接通过reveal上面显示的frame布局.有人会问,ios原生的frame方法也可以进行布局,何必多此一举.
的确,原生方法也是一种选择,但是在设备的适配上面还是有缺陷的,所以我写了基于autolayout的BZReveal.
