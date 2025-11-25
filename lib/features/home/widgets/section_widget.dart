import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.sectionTitle,
    this.icon,
    this.hasSeeAllButton = false,
  });

  final String sectionTitle;
  final String? icon;
  final bool hasSeeAllButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: AppTextStyles.darkGreyColor24OpenSansBold.copyWith(
            fontSize: 18,
          ),
        ),
        icon != null
            ? SvgPicture.asset(icon!)
            : hasSeeAllButton
            ? TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: AppTextStyles.primaryColor14RobotoMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
