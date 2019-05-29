import 'package:flutter/material.dart';

/**
 * @Author: 刘志保
 * @CreateDate: 2019/5/29 10:43
 * @Description: 状态模式
 */

class StalessSubLabel extends StatelessWidget{

  final bactive;
  final ValueChanged<bool> onChanged;
  StalessSubLabel({Key key,this.bactive:false,this.onChanged}):super(key:key);

  void _activeChanged() {
    onChanged(!bactive);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _activeChanged,
      child: new Center(
        child: new Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          child: new Text(bactive?"Active":"Inactive",
            style: new TextStyle(fontSize: 50.0,color: Colors.white),),
          decoration: new BoxDecoration(color: bactive?Colors.green[400] : Colors.grey),
        ),
      ),
    );
  }
}

class StalessLabel extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _StalessLabel();
  }
}

class _StalessLabel extends State<StalessLabel>{
  bool _active = false;

  _handleChanged(bool act){
    setState(() {
      _active = act;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new StalessSubLabel(bactive:_active,onChanged:_handleChanged);
  }
}
