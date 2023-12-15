import 'package:flutter/material.dart';
import 'package:riverpodtut/counterscreen.dart';
import 'package:riverpodtut/screen1.dart';
import 'package:riverpodtut/screen2.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final route = MaterialPageRoute(builder: (context) {
    return Home();
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('home screen'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, Screen1().route);
            },
            child: Center(
              child: Container(
                height: 0.06 * height,
                width: 0.8 * width,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber),
                child: Center(
                  child: Text('screen 1'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, Screen2().route);
            },
            child: Center(
              child: Container(
                height: 0.06 * height,
                width: 0.8 * width,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber),
                child: Center(
                  child: Text('screen 2'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, CounterScreen().route);
            },
            child: Center(
              child: Container(
                height: 0.06 * height,
                width: 0.8 * width,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber),
                child: Center(
                  child: Text('Counter screen'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
