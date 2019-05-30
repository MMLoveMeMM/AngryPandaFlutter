import 'package:flutter/material.dart';

/**
 * @Author: 刘志保
 * @CreateDate: 2019/5/29 10:43
 * @Description: 行式布局
 */
class RowWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RowLayout();
  }

}

class RowLayout extends State<RowWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 第一种写法
    var packedRow = new Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.black),
        new Icon(Icons.star, color: Colors.black),
      ],
    );

    // return packedRow ;
    // 第三种写法
    return new Center(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Icon(Icons.star, color: Colors.green[500]),
          new Icon(Icons.star, color: Colors.green[500]),
          new Icon(Icons.star, color: Colors.green[500]),
          new Icon(Icons.star, color: Colors.black),
          new Icon(Icons.star, color: Colors.black),
        ],
      ),
    );
  }

  // 第二种写法
  Widget RowUI(){
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.black),
        new Icon(Icons.star, color: Colors.black),
      ],
    );
}

}