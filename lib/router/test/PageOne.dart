import 'package:flutter/material.dart';
import 'PageTwo.dart';
import 'package:angrypandaflutter/third/fluro/app_route.dart';
import 'package:angrypandaflutter/third/fluro/src/common.dart';
class PageOneWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PageOneRouter();
  }
}

class PageOneRouter extends State<PageOneWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new RaisedButton(
      onPressed: (){
        /*Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new PageTwoWidget()),
        );*/

        var bodyJson = '{"user":1281,"pass":3041}';
        router.navigateTo(context, '/route/test/$bodyJson');
      },
      child: new Text('跳转'),),
    );
  }
}





