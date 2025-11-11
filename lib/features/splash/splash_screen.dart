import 'dart:async';

import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_icons.dart';
import 'package:aast_books_project/core/resources/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
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
