import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    AppBar myAppbar = AppBar(
      title: Text("Responsive"),
    );

    final double heightDevice = MediaQuery.of(context).size.height;
    final double bodyApp = heightDevice -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    final double widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: myAppbar,
      body: Column(
        children: [
          Container(
            height: bodyApp * 0.3,
            width: widthDevice,
            color: Colors.blueAccent,
          ),
          Container(
            height: bodyApp * 0.3,
            width: widthDevice,
            color: Colors.redAccent,
            alignment: Alignment.center,
            child: Platform.isAndroid ? Text("Android") : Text("iOS"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: bodyApp * 0.4,
            width: widthDevice,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                AspectRatio(
                  aspectRatio: 4 / 6,
                  child: Container(
                    color: Colors.blueAccent,
                    margin: EdgeInsets.only(right: 20),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 4 / 6,
                  child: Container(
                    color: Colors.orangeAccent,
                    margin: EdgeInsets.only(right: 20),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 4 / 6,
                  child: Container(
                    color: Colors.greenAccent,
                    margin: EdgeInsets.only(right: 20),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 4 / 6,
                  child: Container(
                    color: Colors.yellowAccent,
                    margin: EdgeInsets.only(right: 20),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 4 / 6,
                  child: Container(
                    color: Colors.amberAccent,
                    margin: EdgeInsets.only(right: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
