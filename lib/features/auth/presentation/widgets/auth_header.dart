import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.authTitle,
    required this.authDescription,
  });

  final String authTitle;
  final String authDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(authTitle, style: AppTextStyles.darkGreyColor24OpenSansBold),
        SizedBox(height: 8),
        Text(authDescription, style: AppTextStyles.greyColor16Regular),
      ],
    );
  }
}
