import 'package:flutter/material.dart';
import 'package:mydemo/route/MyPlayPage.dart';

class Index1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  new ListView(

      children: <Widget>[
        Column(
          children: <Widget>[

            new GestureDetector(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new PlayPage())),
//              onTap:()=>    Navigator.of(context).pushReplacementNamed('/spink'),
              child:  Image.network('http://img5.mtime.cn/mg/2019/01/18/104706.87178971.jpg'
                ,
                fit: BoxFit.cover,
                height: 250,
              ),
            ),

            new Row(
              children: <Widget>[
                new IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.account_box),
                ),

                Expanded(//水平充满,如果只有一个,一个横向充满,两个两个横向充满
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,//组件居中对齐 ,默认左对齐,还有左对齐右对齐
                    children: <Widget>[
                      new Text("由韩寒执导的喜剧《飞驰人生》曝光了一支“飞驰技校”特辑，将沈腾等主演在片场培训赛车、学炒饭、跳钢管舞的画面，剪辑成了一支逗趣的招生广告。",
                          maxLines: 2, //最大行数
                          overflow: TextOverflow.ellipsis
                      ),
                      Text('敖厂长 · 534次观看 · 一小时前',style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black45
                      ))
                    ],),

                ),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {

                  // showModalBottomSheet<T>：显示模态质感设计底部面板
                  showModalBottomSheet<Null>(context:context, builder:(BuildContext context) {

                    return new Container(
                        child: new Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: new Text(
                                '这是模态底部面板，点击任意位置即可关闭',
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 24.0
                                )
                            )
                        )
                    );
                  });


                }),
              ],
            )

          ],
        ),



        new Divider(),//分割线

        Column(
          children: <Widget>[
            Image.network('http://img5.mtime.cn/mg/2019/01/18/094447.95028342.jpg'
              ,
              fit: BoxFit.cover,
              height: 250,
            ),
            new Row(
              children: <Widget>[
                new FloatingActionButton(
                  heroTag: "manwei",
                  onPressed: (){},
                  mini: true,
                  child: new Icon(Icons.account_box),
                ),

                Expanded(//水平充满,如果只有一个,一个横向充满,两个两个横向充满
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,//组件居中对齐 ,默认左对齐,还有左对齐右对齐
                    children: <Widget>[
                      new Text("今天，漫威工作室官推也参与进来，发布漫威角色“十年挑战”的照片。钢铁侠大佬气质不改，美国队长真的一点没老（果真是注射了血清），雷神头发剪短了，寡姐气场一天比一天强",
                          maxLines: 2, //最大行数
                          overflow: TextOverflow.ellipsis
                      ),
                      Text('漫威影业 · 3069次观看 · 两小时前',style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black45
                      ))
                    ],),
                ),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}
                ),
              ],
            )
          ],
        ),

        new Divider(),//分割线

        Column(
          children: <Widget>[
            Image.network('http://img5.mtime.cn/mg/2019/01/17/153519.33436196.jpg'
              ,
              fit: BoxFit.cover,
              height: 250,
            ),
            new Row(
              children: <Widget>[
                new FloatingActionButton(
                  heroTag: "boximi",
                  onPressed: (){},
                  mini: true,
                  child: new Icon(Icons.account_box),
                ),

                Expanded(//水平充满,如果只有一个,一个横向充满,两个两个横向充满
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,//组件居中对齐 ,默认左对齐,还有左对齐右对齐
                    children: <Widget>[
                      new Text("《波西米亚狂想曲》在日本票房大爆，逆袭成为日本2018年年度票房冠军。除了电影本身受到欢迎，影片的宣传也功不可没。上面就是《波西米亚狂想曲》与大阪桐荫高中吹奏乐部的合作视频，演绎了若干首皇后乐队的名曲。",
                          maxLines: 2, //最大行数
                          overflow: TextOverflow.ellipsis
                      ),
                      Text('大阪桐荫高中吹奏乐部 · 3069次观看 · 两小时前',style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black45
                      ))
                    ],),
                ),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}
                ),
              ],
            )
          ],
        ),


        new Divider(),//分割线

        Column(
          children: <Widget>[
            Image.network('http://img5.mtime.cn/mg/2019/01/17/164036.85414199.jpg'
              ,
              fit: BoxFit.cover,
              height: 250,
            ),
            new Row(
              children: <Widget>[
                new FloatingActionButton(
                  heroTag: "xiee",
                  onPressed: (){},
                  mini: true,
                  child: new Icon(Icons.account_box),
                ),

                Expanded(//水平充满,如果只有一个,一个横向充满,两个两个横向充满
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,//组件居中对齐 ,默认左对齐,还有左对齐右对齐
                    children: <Widget>[
                      new Text("美剧《邪恶力量》登上《娱乐周刊》，主演“全家重聚”庆祝第300集！已经播到第14季的CW美剧老大哥，可喜可贺。主演简森·阿克斯、贾德·帕达里克、米沙·克林斯、萨曼塔·史密斯、杰弗里·迪恩·摩根等齐亮相。同时第300集剧照曝光，父母团圆，一家人难得吃顿饭，据悉第300集将在2月7日播出。",
                          maxLines: 2, //最大行数
                          overflow: TextOverflow.ellipsis
                      ),
                      Text('美剧 · 3487次观看 · 两小时前',style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black45
                      ))
                    ],),
                ),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}
                ),
              ],
            )

          ],
        ),



        new Divider(),//分割线

        Column(
          children: <Widget>[
            Image.network('http://img5.mtime.cn/mg/2019/01/17/130350.77072792.jpg'
              ,
              fit: BoxFit.cover,
              height: 250,
            ),
            new Row(
              children: <Widget>[
                new FloatingActionButton(
                  heroTag: "laoyouji",
                  onPressed: (){},
                  mini: true,
                  child: new Icon(Icons.account_box),
                ),

                Expanded(//水平充满,如果只有一个,一个横向充满,两个两个横向充满
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,//组件居中对齐 ,默认左对齐,还有左对齐右对齐
                    children: <Widget>[
                       Text("詹妮弗·安妮斯顿在《老友记》中饰演了瑞秋·格林这个非常受欢迎的角色，这部获得巨大成功的电视剧之后为她带来了出演更多成功喜剧、爱情片和戏剧的机会，并使她成为好莱坞收入最高的女演员之一。",
                          maxLines: 2, //最大行数
                          overflow: TextOverflow.ellipsis
                      ),
                      Text('老友记 · 3487次观看 · 两小时前',style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black45
                      ))
                    ],),
                ),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}
                ),
              ],
            )

          ],
        ),



      ],
    );
  }
}

