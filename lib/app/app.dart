import 'package:flutter/material.dart';
import 'package:store_management_app/Presentations/Resources/route_manager.dart';
import 'package:store_management_app/Presentations/Resources/theme_manager.dart';

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: RouteManager.splashRoute,
      theme: getApplicationtheme(),
    );
  }
}
