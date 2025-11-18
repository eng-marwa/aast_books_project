import 'package:aast_books_project/core/constants/ui_constants/app_ui_constants.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.pageIndex});

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppUiConstants.onboardingData[pageIndex].image),
        SizedBox(height: 14),
        Text(
          AppUiConstants.onboardingData[pageIndex].title,
          style: AppTextStyles.darkGreyColor24OpenSansBold,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 14),
        Text(
          AppUiConstants.onboardingData[pageIndex].description,
          style: AppTextStyles.greyColor16Regular,
          textAlign: TextAlign.center,
        ),
      ],
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
