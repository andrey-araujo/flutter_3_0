// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.redAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.amber,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.yellowAccent,
                width: 100,
                height: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.greenAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.lightBlue,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blueAccent,
                width: 100,
                height: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.purpleAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.pinkAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.orangeAccent,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
