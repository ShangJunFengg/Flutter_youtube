import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {
  @override
  _MyExpansionTileState createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {


  static String text="视频是Flutter基础的一个进阶教程，主要讲解的是在工作中一些常用的功能。学完这篇文章和视频，你可以轻松制作出80%以上工作中常用的Flutter复杂效果，对Flutter有更深刻的了解。";

  static Text titleText=Text( text,softWrap: false, overflow: TextOverflow.ellipsis,);

  @override
  void dispose() {
    super.dispose();
    titleText=Text( text,softWrap: false, overflow: TextOverflow.ellipsis,);
  }

  @override
  Widget build(BuildContext context) {
    return    ExpansionTile(
      title: Container(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,//组件居中对齐 ,默认左对齐,还有左对齐右对齐
        children: <Widget>[
          titleText,
          Text('▶3145  2019-01-25',style: new TextStyle(
              fontSize: 14.0,
              color: Colors.black
          ))
        ],),),
      onExpansionChanged: (bool){
        setState(() {
          titleText=  bool?Text(text):Text( text,softWrap: false, overflow: TextOverflow.ellipsis,);
        });
      },
//                    leading: Icon(Icons.ac_unit ),//左边的图像
//                    backgroundColor: Colors.grey,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 0,10.0, 0),
          child:   Text("本视频是实战和基础的一个衔接总结。在学完基础后，很多小伙伴都急于上手一个实战项目，觉的做完实战项目就算学会了Flutter，达到了工作水平一样。其实在实战和基础之间还需要有一个过度，人们喜欢称之为进阶。那这篇文章或者说视频就是进阶教程，它会以小实例的方式进行讲解。")
          ,)
        ],
    );
  }
}
