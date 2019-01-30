import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mydemo/route/Index1.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyIndex1 extends StatefulWidget {
  @override
  _MyIndex1State createState() => _MyIndex1State();
}

class _MyIndex1State extends State<MyIndex1> {


  int _currentIndex = 0;
  final List<Widget> _children = [
    Center(child: SpinKitFadingCube(color: Colors.orange),),
    Index1(),
  ];

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime(){
    var _duration = new Duration(seconds:2);
    new Timer(_duration,()=>  setState(() {  _currentIndex = 1; }) );
  }


  @override
  Widget build(BuildContext context) {
    return _children[_currentIndex];
  }

}

