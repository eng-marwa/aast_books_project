import 'package:aast_books_project/core/resources/app_button_styles.dart';
import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_icons.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: AppTextStyles.primaryColor14RobotoMedium,
              ),
            ),
          ),
          SizedBox(height: 13),
          SvgPicture.asset(AppIcons.onboarding1),
          SizedBox(height: 14),
          Text(
            'Now reading books will be easier',
            style: AppTextStyles.darkGreyColor24OpenSansBold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 14),
          Text(
            'Discover and read a variety of books from different genres and authors all in one app.',
            style: AppTextStyles.greyColor16Regular,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 66),
          ElevatedButton(
            onPressed: () {},
            style: AppButtonStyles.primaryButtonStyle,
            child: Text(
              'Continue',
              style: AppTextStyles.whiteColor16OpenSansBold,
            ),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
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
    );
  }
}

/*
No scrollable widget here
Column Widget: vertical
Row Widget: horizontal

to scroll:
  SingleChildScrollView -> Column or Row
  ListView -> scrollable list of items
 */
