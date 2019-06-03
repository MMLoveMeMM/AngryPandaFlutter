import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ImageComp();
  }
}

class ImageComp extends State<ImageWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Container Test"),
        centerTitle: true,),
      body: new ListView(
        children: <Widget>[
          // 资源图片
          new Image.asset('imgs/logo.jpeg'),
          //网络图片
          new Image.network(
              'https://flutter.io/images/homepage/header-illustration.png'),
          // 本地文件图片
          // new Image.file(new File("/Users/gs/Downloads/1.jpeg")),
          // Uint8List图片
          // new Image.memory(bytes),
          //使用ImageProvider加载图片
          new Image(image: new NetworkImage(
              "https://flutter.io/images/homepage/screenshot-2.png"),)
        ],
      ),
    );
  }
}
