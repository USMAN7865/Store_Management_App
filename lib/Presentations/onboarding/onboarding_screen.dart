import 'package:flutter/material.dart';
import 'package:store_management_app/Presentations/Resources/color_manager.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primarycolor,
      body: const Center(
        child: Text("Onboarding Screen"),
      ),
    );
  }
}
