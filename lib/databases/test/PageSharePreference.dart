import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class PageShareWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PageShare();
  }
}

class PageShare extends State<PageShareWidget>{
  String text="";

  @override
  void initState() {
    _initDatas();
  }

  _initDatas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    text = prefs.get("hello");
  }

  _getText() {
    setState(() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      text = prefs.get("hello");
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('share'),
      ),
      body: new RaisedButton(onPressed: () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("hello", "liuzhibao");
        setState(() async {
          text = "world";
        });

        // _getText();
      },
        child: new Text("datas : $text"),),
    );
  }
}








