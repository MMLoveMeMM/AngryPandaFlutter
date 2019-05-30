
/**
 * @Author: 刘志保
 * @CreateDate: 2019/5/29 10:43
 * @Description: dart 基本语法
 */

/**
 * 其实语法也不需要学太多了,反正就是那么点东西,这里只介绍最基本的面向对象,如果初始化对象.
 * dart 在初始化对象如下:
 * */

class N
{
}
class Box {

  var width;
  var height;
  N m;

  Box(var w,var h,N nss){
    this.width = w;
    this.height = h;
    this.m = nss;
  }

}

/*
* 那么上面的初始化如下:
* new Box(
* w:100,
* h:300,
* nss:new N())
* 其中nss 这个一定要和类中保持一致.
*
* new Box(
* w:100,
* h:300)
*
* new Box(w:100)
*
* new Box(
* nss:new N())
*
* new Box()
 */

/*
* 这个语法规则贯穿了整个dart编程.
* 比如 Row 类,用于行向布局,它的结构体:
* https://api.flutter.dev/flutter/widgets/Row-class.html参考列出:
* Row({Key key,
* MainAxisAlignment mainAxisAlignment: MainAxisAlignment.start,
* MainAxisSize mainAxisSize: MainAxisSize.max,
* CrossAxisAlignment crossAxisAlignment: CrossAxisAlignment.center,
* TextDirection textDirection,
* VerticalDirection verticalDirection: VerticalDirection.down,
* TextBaseline textBaseline,
* List<Widget> children: const [] })
*
*
* 那么看起来Row的参数这么多,每次使用Row布局需要填充这么多不是很坑爹吗?显然google不需要开发费那么多脑筋去想各种参数填进去.
* 根据上面的样例,初始化Row就可以很简单,使用了相关的参数就初始化对应的参数:
* 初始化一个如下:在Row布局中放三个Text文本
* new Row(
* children:[
*   new Text('1'),
*   new Text('2'),
*   new Text('3'),
* ]
* )
*
* 你也可以初始化两个,如下:
* new Row(
* mainAxisSize: MainAxisSize.min,
* children:[
*   new Text('1'),
*   new Text('2')
* ]
* )
* 其他的和一般普通语言基本上差不多,稍微扭转一下思维就可以了,当然在使用很多类的情况下,阅读一下源代码即可.
 */