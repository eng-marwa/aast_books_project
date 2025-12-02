import 'dart:async';

import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_icons.dart';
import 'package:aast_books_project/core/resources/app_router.dart';
import 'package:aast_books_project/core/storage/shared_prefs_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(child: SvgPicture.asset(AppIcons.logo)),
    );
  }

  void init(BuildContext context) {
    Timer(Duration(seconds: 3), () async {
      SharedPreferences sh = await SharedPreferences.getInstance();
      bool isCompleted = SharedPrefsHelper(sh).isOnboardingCompleted;
      bool isLoggedIn = SharedPrefsHelper(sh).isLoggedIn;
      if (isCompleted && isLoggedIn) {
        Navigator.pushReplacementNamed(context, Routes.loginRoute);
      } else if (isCompleted && !isLoggedIn) {
        Navigator.pushReplacementNamed(context, Routes.loginRoute);
      } else {
        Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
      }
    });
  }
}

/*
Scaffold:
- body
- appBar
- floatingActionButton
- drawer
- bottomNavigationBar
- backgroundColor
 */
/*
Navigation in Flutter:
- Navigator class
    -  Page Routes
    -  Named Navigation
    -  OnGenerateRoute
- routing packages (e.g., GoRouter, AutoRoute)
 */
