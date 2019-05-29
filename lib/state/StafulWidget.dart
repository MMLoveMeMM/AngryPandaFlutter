import 'package:flutter/material.dart';

/**
 * @Author: 刘志保
 * @CreateDate: 2019/5/29 10:43
 * @Description: 状态模式
 */
class StafulLabel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _StatefulLabel();
  }
}

class _StatefulLabel extends State<StafulLabel> {
  bool _active = false;

  _activeChanged() {
    setState(() {
      if (_active) {
        _active = false;
      } else {
        _active = true;
      }
    });
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
          child: new Text(_active?"Active":"Inactive",
          style: new TextStyle(fontSize: 50.0,color: Colors.white),),
          decoration: new BoxDecoration(color: _active?Colors.green[400] : Colors.grey),
        ),
      ),
    );
  }
}
