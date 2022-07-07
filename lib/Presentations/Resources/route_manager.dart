import 'package:flutter/material.dart';
import 'package:store_management_app/Presentations/Forgot_Password/forgot_password.dart';
import 'package:store_management_app/Presentations/Login/login_screen.dart';
import 'package:store_management_app/Presentations/Main/home_Screen.dart';
import 'package:store_management_app/Presentations/Resources/string_manager.dart';
import 'package:store_management_app/Presentations/SignUp/signUp_screen.dart';
import 'package:store_management_app/Presentations/Splash/splash_screen.dart';
import 'package:store_management_app/Presentations/Store_Details/store_details.dart';
import 'package:store_management_app/Presentations/onboarding/onboarding_screen.dart';

class RouteManager {
  static const String splashRoute = '/';
  static const String onboardingRoute = '/onboarding';
  static const String loginRoute = '/login';
  static const String signupRoute = '/signup';
  static const String forgotpassRoute = '/Forgotpass';
  static const String homeRoute = '/home';
  static const String storedetailRoute = '/storedetail';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteManager.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteManager.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case RouteManager.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RouteManager.signupRoute:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case RouteManager.forgotpassRoute:
        return MaterialPageRoute(builder: (_) => const ForgotpassScreen());
      case RouteManager.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteManager.storedetailRoute:
        return MaterialPageRoute(builder: (_) => const DetailScreen());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text(AppString.noRouteFound),
            ),
            body: const Center(
              child: Text(AppString.noRouteFound),
            )));
  }
}
