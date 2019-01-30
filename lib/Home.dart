import 'package:flutter/material.dart';
import 'package:mydemo/route/DataSearch.dart';
import 'package:mydemo/route/Index1_1.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchApp2();
  }
}

class SearchApp2 extends StatefulWidget {
  @override
  _SearchApp2State createState() => _SearchApp2State();
}

class _SearchApp2State extends State<SearchApp2> {

  int _selectIndex = 0;//默认选中第一个

  final List<Widget> _children = [

    Center(
      child: MyIndex1(),
    ),
    Center(
      child:  SpinKitRotatingCircle(color: Colors.blue),
    ),
    Center(
      child: SpinKitWave(color: Colors.blue, type: SpinKitWaveType.center),
    ),  Center(
      child: SpinKitChasingDots(color: Colors.red),
    ),Center(
      child: SpinKitChasingDots(color: Colors.cyanAccent),
    ),

  ];




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Divider(),
      appBar: AppBar(
        leading: Icon(Icons.ondemand_video,color: Colors.red,),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          }),
          IconButton(icon: Icon(Icons.account_box), onPressed: () {}),
        ],
      ),


        body:  _children[_selectIndex],


        bottomNavigationBar:BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text(
                '首页',
              ),

              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),

            BottomNavigationBarItem(
              title: Text(
                '时下流行',
              ),
              icon: Icon(
                Icons.whatshot,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.whatshot,
                color: Colors.red,
              ),
            ),

            BottomNavigationBarItem(
              title: Text(
                '订阅内容',
              ),
              icon: Icon(
                Icons.subscriptions,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.subscriptions,
                color: Colors.red,
              ),
            ),

            BottomNavigationBarItem(
              title: Text(
                '收件箱',
              ),
              icon: Icon(
                Icons.mail,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.mail,
                color: Colors.red,
              ),
            ),

            BottomNavigationBarItem(
              title: Text(
                '媒体库',
              ),
              icon: Icon(
                Icons.folder,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.folder,
                color: Colors.red,
              ),
            ),
          ]
          ,
          iconSize: 20,
          currentIndex: _selectIndex,
          onTap: (index) {
            setState(() {
              _selectIndex = index;
            });
          },
          fixedColor: Colors.red,
          type: BottomNavigationBarType.fixed,
        )


    );
  }


}


