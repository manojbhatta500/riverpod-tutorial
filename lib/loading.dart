import 'package:flutter/material.dart';
import 'package:riverpodtut/home.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod Tutorial'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const Text('This is a Riverpod Tutorial app'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  '1. you can view the code of every Screen in View source code button'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  '2. It contains 5 screen where you can pass data form one to another'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  '3. It also has one counter screen. play around it to view source code'),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, Home().route);
                  },
                  child: Text("Let's start"))
            ],
          ),
        ));
  }
}
