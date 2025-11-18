import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
    required this.controller,
    this.validator,
  });

  final String label;
  final String hint;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: AppTextStyles.primaryColor14RobotoMedium.copyWith(
            color: AppColors.darkGreyColor,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          validator: widget.validator,
          obscureText: widget.isPassword && !isVisible,
          controller: widget.controller,
          style: AppTextStyles.greyColor16Regular,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: AppTextStyles.greyColor16Regular.copyWith(
              color: AppColors.greyB8Color,
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(
                      isVisible ? Icons.visibility_off : Icons.visibility,
                    ),
                    color: AppColors.primaryColor,
                  )
                : null,
            filled: true,
            fillColor: AppColors.lightGreyFAColor,
            border: getBorder(AppColors.lightGreyFAColor, false),
            errorBorder: getBorder(AppColors.redColor),
            focusedBorder: getBorder(AppColors.primaryColor),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder getBorder(Color color, [bool isBorderSide = true]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: isBorderSide ? BorderSide(color: color) : BorderSide.none,
    );
  }
}
