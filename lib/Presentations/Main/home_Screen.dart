// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:store_management_app/Presentations/Resources/color_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primarycolor,
      body: const Center(child: Text('Welcome to Home Screen')),
    );
  }
}
