import 'package:flutter/material.dart';

/**
 * @Author: 刘志保
 * @CreateDate: 2019/5/30 14:43
 * @Description: 容器布局
 */

class ContainerWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ContainerLayout();
  }

}

class ContainerLayout extends State<ContainerWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Icon(Icons.account_circle,color:Colors.green[500]),
    );
  }
}