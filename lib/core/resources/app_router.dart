//routes names
import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/features/auth/presentation/login_screen.dart';
import 'package:aast_books_project/features/home/main_screen.dart';
import 'package:aast_books_project/features/onboarding/presentation/onboarding_screen.dart';
import 'package:aast_books_project/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const String splashRoute = '/';
  static const String mainRoute = '/main';
  static const String onBoardingRoute = '/onboarding';
  static const String loginRoute = '/login';
}

class AppRouter {
  AppRouter._();

  // onGenerateRoute method to handle named routes
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (context) => MainScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (context) => LoginScreen());

      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Center(child: Text('Route not defined')),
      ),
    );
  }
}
