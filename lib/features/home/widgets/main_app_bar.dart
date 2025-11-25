import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_icons.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    this.haveSearchButton = false,
    required this.title,
    this.haveNotificationButton = false,
  });

  final bool haveSearchButton;
  final bool haveNotificationButton;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: haveSearchButton,
            maintainState: true,
            maintainAnimation: true,
            maintainSize: true,
            child: SvgPicture.asset(AppIcons.search),
          ),
          Text(
            title,
            style: AppTextStyles.darkGreyColor24OpenSansBold.copyWith(
              fontSize: 20,
            ),
          ),
          Visibility(
            visible: haveNotificationButton,
            maintainState: true,
            maintainAnimation: true,
            maintainSize: true,
            child: Stack(children: [
              SvgPicture.asset(AppIcons.notification),
              Positioned(left: 15,child: SvgPicture.asset(AppIcons.redDot)),
            ],)
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
