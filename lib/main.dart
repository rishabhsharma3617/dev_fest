import 'package:flutter/material.dart';

void main() => runApp(myApp());
final speakers = [
  //"Pawan","Dhrumil","Vrijraj","Kamal"
  {"name": "Pawan", "claps": 0},
  {"name": "Dhrumil", "claps": 0},
  {"name": "Kamal", "claps": 0},
  {"name": "Vrijraj", "claps": 0},
];

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Speakers List",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speaker List"),
      ),
      body: ListView(
//        children: <Widget>[
//          Container(
//            decoration: BoxDecoration(border: Border.all()),
//            child: ListTile(title: Text("Pawan kumar")),
//          ),
//          Container(
//            decoration: BoxDecoration(border: Border.all()),
//            child: ListTile(title: Text("Dhrumit")),
//          ),
//          Container(
//            decoration: BoxDecoration(border: Border.all()),
//            child: ListTile(title: Text("Kamal")),
//          ),
//          Container(
//            decoration: BoxDecoration(border: Border.all()),
//            child: ListTile(title: Text("Vrijraj")),
//          ),
//
//        ],
          children: speakers.map((speaker) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: ListTile(
              title: Text(speaker["name"]),
              subtitle: Text("This is for description"),
              trailing: Text(speaker["claps"].toString()),
              onTap: (){
                print(speaker);
              },
            ),
          ),
        );
      }).toList()),
    );
  }
}
