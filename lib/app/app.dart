import 'package:flutter/material.dart';
import 'package:store_management_app/main.dart';

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  void UpdataAge() {
    MyApp.instance.Age;
    print(MyApp.instance.Age);
  }

  @override
  Widget build(BuildContext context) {
    UpdataAge();
    return Container();
  }
}
