import 'package:aast_books_project/core/constants/ui_constants/app_ui_constants.dart';
import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppIndicator extends StatefulWidget {
  const AppIndicator({super.key, required this.pagesNumber, required this.pageIndex});

  final int pagesNumber;
  final int pageIndex;

  @override
  State<AppIndicator> createState() => _AppIndicatorState();
}

class _AppIndicatorState extends State<AppIndicator> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          widget.pagesNumber,
          (index) => AnimatedContainer(
            margin: EdgeInsets.only(right: 3),
            duration: Duration(seconds: 1),
            height: widget.pageIndex == index ? 25 : 7,
            width: widget.pageIndex == index ? 25 : 7,
            decoration: BoxDecoration(
              color: widget.pageIndex == index
                  ? AppColors.primaryColor
                  : AppColors.lightGreyE8Color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
