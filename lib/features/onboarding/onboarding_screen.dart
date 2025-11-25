import 'package:aast_books_project/core/constants/ui_constants/app_ui_constants.dart';
import 'package:aast_books_project/core/resources/app_button_styles.dart';
import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_router.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:aast_books_project/features/onboarding/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Visibility(
                visible: pageIndex < AppUiConstants.onboardingData.length - 1,
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.mainRoute);
                  },
                  child: Text(
                    'Skip',
                    style: AppTextStyles.primaryColor14RobotoMedium,
                  ),
                ),
              ),
            ),
            SizedBox(height: 13),
            OnboardingItem(pageIndex: pageIndex),
            SizedBox(height: 33),
            SizedBox(
              height: 8,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  AppUiConstants.onboardingData.length,
                  (index) => AnimatedContainer(
                    margin: EdgeInsets.only(right: 3),
                    duration: Duration(seconds: 1),
                    height: pageIndex == index ? 25 : 7,
                    width: pageIndex == index ? 25 : 7,
                    decoration: BoxDecoration(
                      color: pageIndex == index
                          ? AppColors.primaryColor
                          : AppColors.lightGreyE8Color,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 33),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if(pageIndex<AppUiConstants.onboardingData.length-1) {
                    pageIndex++;
                  }else{
                    Navigator.pushReplacementNamed(context, Routes.mainRoute);
                  }
                });
              },
              style: AppButtonStyles.primaryButtonStyle,
              child: Text(
                pageIndex < AppUiConstants.onboardingData.length - 1
                    ? 'Continue'
                    : 'Get Started',
                style: AppTextStyles.whiteColor16OpenSansBold,
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.loginRoute);
              },
              style: AppButtonStyles.secondaryButtonStyle,
              child: Text(
                'Sign In',
                style: AppTextStyles.whiteColor16OpenSansBold.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
