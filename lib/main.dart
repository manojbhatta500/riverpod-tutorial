import 'package:flutter/material.dart';
import 'package:riverpodtut/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtut/loading.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final count = StateProvider((ref) => 0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loading(),
    );
  }
}
