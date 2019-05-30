import 'package:flutter/material.dart';

/**
 * @Author: 刘志保
 * @CreateDate: 2019/5/30 16:31
 * @Description: 列表布局
 */

class ListWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListLayout();
  }
}

List<Widget> list = <Widget>[
  new ListTile(
    title: new Text('title1',style: new TextStyle(fontWeight: FontWeight.w500,fontSize:20.0),),
    subtitle: new Text('sub title1'),
    leading: new Icon(Icons.access_alarm,color: Colors.green[500],),
  ),
  new ListTile(
    title: new Text('title2',style: new TextStyle(fontWeight: FontWeight.w500,fontSize:20.0),),
    subtitle: new Text('sub title2'),
    leading: new Icon(Icons.access_alarm,color: Colors.green[500],),
  ),
  new ListTile(
    title: new Text('title3',style: new TextStyle(fontWeight: FontWeight.w500,fontSize:20.0),),
    subtitle: new Text('sub title3'),
    leading: new Icon(Icons.access_alarm,color: Colors.green[500],),
  ),
];

class ListLayout extends State<ListWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new ListView(
        children: list,
      ),
    );
  }
}