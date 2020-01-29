import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned(
        top: -(MediaQuery.of(context).size.height / 2),
        left: -(MediaQuery.of(context).size.width / 2),
        child: Container(
          height: MediaQuery.of(context).size.height +
              MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width +
              MediaQuery.of(context).size.width * 0.52,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [
                  const Color(0xFFFFB788),
                  const Color(0xFFFF5A87),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Builder(
            builder: (context) => IconButton(
                  icon: new Icon(Icons.menu),
                  onPressed: () {},
                ),
        ),
          actions: <Widget>[
             Padding(child: CircleAvatar(radius: 16,),padding: EdgeInsets.fromLTRB(0, 0, 8, 0),)
             
           
          ],
        ),
        body: Container(
          color: Colors.transparent,
        ),
      ),
    ]);
  }
}

class CenterHorizontal extends StatelessWidget {
  CenterHorizontal(this.child);
  final Widget child;

  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [child]);
}
