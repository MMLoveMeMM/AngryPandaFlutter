import 'package:flutter/material.dart';
import '../fluro/app_route.dart';

class PageTwoWidget extends StatefulWidget{

  final String _result;
  PageTwoWidget(this._result);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PageTwo();
  }
}

class PageTwo extends State<PageTwoWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
          title:new Text("第二个界面"),
          backgroundColor: Colors.amber
      ),
      body: new Center(
          child: new RaisedButton(onPressed: (){
            // Navigator.pop(context);
            router.pop(context);
          },
            child: new Text("返回"+widget._result),)
      ),
    );
  }

}
