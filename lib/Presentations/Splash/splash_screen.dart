// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:store_management_app/Presentations/Resources/assets_manager.dart';
import 'package:store_management_app/Presentations/Resources/color_manager.dart';
import 'package:store_management_app/Presentations/Resources/route_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  _stayDelay() {
    _timer = Timer(const Duration(seconds: 2), _NextScreen);
  }

  _NextScreen() {
    Navigator.pushReplacementNamed(context, RouteManager.onboardingRoute);
  }

  @override
  void initState() {
    super.initState();
    _stayDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.primarycolor,
        body: const Center(
          child: Image(
            image: AssetImage(ImageManager.splashlogo),
          ),
        ));
  }
}
