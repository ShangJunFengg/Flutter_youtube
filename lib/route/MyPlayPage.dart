import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydemo/route/MyExpansionTile.dart';
import 'package:video_player/video_player.dart';


class PlayPage extends StatefulWidget {
  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  VideoPlayerController _videoPlayerController1;
  ChewieController _chewieController;

 bool softWrapText=false;

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
//        'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4');
        'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
      systemOverlaysAfterFullScreen: [SystemUiOverlay.bottom]
//       autoInitialize: true,
    );


  }
//http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Column(
          children: <Widget>[

            Chewie(  controller: _chewieController, ),
            Expanded(
              child:     ListView(
                children: <Widget>[
                  new Row(

                    children: <Widget>[

                      Container(
                        margin: const EdgeInsets.fromLTRB(5.0, 5.0,2.0, 2.0),
                        child:     new CircleAvatar(
                          radius: 25.0,
                          backgroundImage: NetworkImage(
                              'https://i1.hdslb.com/bfs/face/156d5d3b3f4b66d940365b3b0e3a809e1fcc0d97.jpg@180w_180h.webp'
                          ),
                        ),
                      ),

//                      new ClipOval(
//                        child: new Image.network('https://i1.hdslb.com/bfs/face/156d5d3b3f4b66d940365b3b0e3a809e1fcc0d97.jpg@180w_180h.webp'
//                        ),
//                      ),

                      Expanded(//水平充满,如果只有一个,一个横向充满,两个两个横向充满
                        child:
                            Container(
                              margin: const EdgeInsets.fromLTRB(10.0, 0,0, 0),
                              child:    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,//组件居中对齐 ,默认左对齐,还有左对齐右对齐
                              children: <Widget>[
                                new Text("敖厂长",
                                    maxLines: 2, //最大行数
                                    overflow: TextOverflow.ellipsis
                                ),
                                Text('4564粉丝',style: new TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black45
                                ))
                              ],),),

                      ),

                      //关注按钮
                      new Container(
                        margin: const EdgeInsets.fromLTRB(0, 0,10.0, 0),
                        child:
                      new RaisedButton(onPressed: (){},

                          color: Colors.redAccent[400],
                          child: new Text('+ 关注',style: new TextStyle(color: Colors.white))),)
                    ],
                  ),
                  MyExpansionTile(),
                  //点赞收藏分享
                  Row(
                    children: <Widget>[
                    Expanded(child: IconButton(icon:Icon( Icons.thumb_up), onPressed: null)),
                    Expanded(child: IconButton(icon:Icon( Icons.thumb_down), onPressed: null)),
                    Expanded(child: IconButton(icon:Icon( Icons.share), onPressed: null)),
                    Expanded(child: IconButton(icon:Icon( Icons.star), onPressed: null)),
                  ],),

    Column(
          children: <Widget>[
            Container( color: Colors.yellowAccent,  height: 70, ),
            Container( color: Colors.redAccent,  height: 70, ),
            Container( color: Colors.blueAccent,  height: 70, ),
            Container( color: Colors.brown,  height: 70, ),
            Container( color: Colors.deepPurple,  height: 70, ),
            Container( color: Colors.lightBlueAccent,  height: 70, ),
            Container( color: Colors.pinkAccent,  height: 70, ),
          ],
        ),

                ],
              ),
            )

          ],
        ),

    );
  }

}


