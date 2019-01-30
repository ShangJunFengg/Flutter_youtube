import 'package:flutter/material.dart';

void main (){
  runApp(new MyButtonApp());
}

class MyButtonApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyButton(),
        ),
      ),
    );
  }

}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   // return          Tab(text: '业界动态', icon: Icon(Icons.language));

    return RaisedButton(
      child:Tab(text: '业界动态', icon: Icon(Icons.star)),onPressed: (){},
    );


  }
}
