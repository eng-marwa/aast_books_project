import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_router.dart';
import 'package:aast_books_project/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AastBooksApp extends StatelessWidget {
  const AastBooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Routes.splashRoute,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.whiteColor,),
    );
  }
}

/*
AastBookApp:
    - root widget of the application
    - localization
    - theming
    - navigation setup

 */

/*
Widgets
  two abstract classes ->
 - Stateless widget -> doesn't have mutable state
 - Stateful widget -> has mutable state

 **create widget
 create class ->  extends StatelessWidget or StatefulWidget

 **BuildContext-> class that provides context about the location of a widget in the widget tree
 */
