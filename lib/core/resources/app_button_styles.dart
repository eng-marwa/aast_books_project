import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppButtonStyles {
  AppButtonStyles._();

  static final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 56),
    backgroundColor: AppColors.primaryColor,
    foregroundColor: AppColors.whiteColor,
    maximumSize: Size(double.infinity, 56),
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
  static final ButtonStyle orderButtonStyle = ElevatedButton.styleFrom(
    minimumSize: Size.fromHeight(36),
    backgroundColor: AppColors.primaryColor,
    foregroundColor: AppColors.whiteColor,
    maximumSize: Size(double.infinity, 36),
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
  );

  static final ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 56),
    backgroundColor: AppColors.lightPurpleColor,
    foregroundColor: AppColors.primaryColor,
    maximumSize: Size(double.infinity, 56),
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}
