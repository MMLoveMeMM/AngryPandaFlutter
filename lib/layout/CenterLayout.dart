import 'package:flutter/material.dart';
/**
 * @Author: 刘志保
 * @CreateDate: 2019/5/23 14:43
 * @Description: 居中布局
 */
class Centerwidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CenterLayout();
  }
}

class CenterLayout extends State<Centerwidget>{

  var basic = new Center(
    child: new Icon(Icons.accessible_forward,color: Colors.green[500]),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return new Center(
      child: new Icon(Icons.accessible_forward,color: Colors.green[500]),);*/
    return mulLayout3();
  }
}

Widget mulLayout1(){
  return new Center(
    child: new Row(
      children: <Widget>[
        new Text("混合布局"),
        new Icon(Icons.account_balance_wallet),
        new Image.asset("images/house.png"),
        new Column(
          children: <Widget>[
            new Icon(Icons.add_circle,color: Colors.green[500],),
            new Icon(Icons.add_circle,color: Colors.green[500],),
            new Icon(Icons.add_circle,color: Colors.green[500],),
          ],
        ),
      ],
    ),
  );
}

Widget mulLayout2(){
  return new Center(
    child: new Row(
      children: <Widget>[
        new Expanded(child: new Image.asset("assets/images/food01.jpeg")),
        new Expanded(child: new Image.asset("assets/images/food01.jpeg")),
        new Expanded(child: new Image.asset("assets/images/food01.jpeg")),
      ],
    ),
  );
}

Widget mulLayout3(){
  return new Column(
    children: <Widget>[
      new Text("col 1",
        style: new TextStyle(fontFamily: 'Lato-Bold'),),
      new Icon(Icons.account_balance,color: Colors.green[500],),
      new Row(
        children: <Widget>[
          new Icon(Icons.accessible_forward,color: Colors.green[250]),
          new Image.asset('assets/images/p1.png',width: 100,height: 100,),
          new Text('hello'),
          new Icon(Icons.accessible_forward,color: Colors.green[250],)
        ],
      )
    ],
  );
}
