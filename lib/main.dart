import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mydemo/Home.dart';
import 'package:mydemo/test/Spinkit.dart';
void main() {
  runApp(new MaterialApp(
    title: '启动图demo',
//    debugShowMaterialGrid:true,
//    theme: new ThemeData(
//        brightness: Brightness.light,
//        backgroundColor: Colors.white,
//        platform: TargetPlatform.iOS),
    home:  new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) =>MyApp(),
      '/spink': (BuildContext context) =>Spinkit()
    },
  ));
}


//StatelessWidget
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

 class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    //设置启动图生效时间
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 236),
      body: new Center(
        child: new Image.asset('images/logo.jpg'),
      ),
    );
  }
}