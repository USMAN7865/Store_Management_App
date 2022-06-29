import 'package:flutter/material.dart';
import 'package:store_management_app/app/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp._instance();

  int Age = 20;
  static final instance = MyApp._instance();

  factory MyApp() => instance;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestApp(),
    );
  }
}
