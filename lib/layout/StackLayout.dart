import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StackLayout();
  }

}

class StackLayout extends State<StackWidget>{

  var stack = new Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [
      new CircleAvatar(
        backgroundImage: new AssetImage('images/pic.jpg'),
        radius: 100.0,
      ),
      new Container(
        decoration: new BoxDecoration(
          color: Colors.black45,
        ),
        child: new Text(
          'Mia B',
          style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return stack;
  }
}