import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppRichText extends StatelessWidget {
  const AppRichText({
    super.key,
    required this.originalText,
    required this.highlightedText,
  });

  final String originalText;
  final String highlightedText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: originalText,
        style: AppTextStyles.greyColor16Medium,
        children: [
          TextSpan(
            text: highlightedText,
            style: AppTextStyles.greyColor16Medium.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
