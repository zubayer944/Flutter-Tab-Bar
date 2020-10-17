import 'package:flutter/material.dart';
import 'package:flutter_tabbar/Four.dart';
import 'package:flutter_tabbar/One.dart';
import 'package:flutter_tabbar/Three.dart';
import 'package:flutter_tabbar/Two.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.photo_album),),
                Tab(icon: Icon(Icons.camera),),
                Tab(icon: Icon(Icons.contacts),),
                Tab(icon: Icon(Icons.calendar_today),),
              ]),
            ),
            body: TabBarView(children: [
              One(),
              Two(),
              Three(),
              Four(),
            ]),
          ),
        )
      ),
    );
  }
}
