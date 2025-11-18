import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const String fontFamily = 'OpenSans';

  static const TextStyle primaryColor14RobotoMedium = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static const TextStyle darkGreyColor24OpenSansBold = TextStyle(
    color: AppColors.darkGreyColor,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    fontFamily: fontFamily,
  );

  static const TextStyle greyColor16Regular = TextStyle(
    color: AppColors.greyColor,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle whiteColor16OpenSansBold = TextStyle(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    fontSize: 16,
  );
  static const TextStyle greyColor16Medium = TextStyle(
    color: AppColors.greyColor,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const TextStyle greyColor12Regular = TextStyle(
    color: AppColors.greyColor,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );
  static const TextStyle primaryColor12Medium = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

}
