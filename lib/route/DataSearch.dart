import 'package:flutter/material.dart';



class DataSearch extends SearchDelegate<String>{

  final cities = [
    "海王",
    "阿甘正传",
    "白蛇缘起",
    "大黄蜂",
    "死侍",
    "流浪地球",
    "疯狂动物城",
    "喜剧之王",
  ];
  final recentCities = [
    "死侍",
    "流浪地球",
    "疯狂动物城",
    "喜剧之王",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(icon: Icon(Icons.close),onPressed: (){
        query='';
      },)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final suggeslist = query.isEmpty
        ?recentCities
        :cities.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      leading: Icon(Icons.videocam),
      title:RichText(text:TextSpan(
          text: suggeslist[index].substring(0,query.length),
          style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
          children: [TextSpan(
            text:suggeslist[index].substring(query.length),
            style: TextStyle(color: Colors.grey)
          )],
      ),)
    ),
      itemCount:suggeslist.length,
    );

  }

}