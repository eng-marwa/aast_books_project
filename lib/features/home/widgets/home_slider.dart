import 'package:aast_books_project/core/common_widgets/app_indicator.dart';
import 'package:aast_books_project/core/resources/app_button_styles.dart';
import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 146,
          decoration: BoxDecoration(
            color: AppColors.lightGreyFAColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Special Offer',
                      style: AppTextStyles.darkGreyColor24OpenSansBold,
                    ),
                    Text(
                      'Discount 25%',
                      style: AppTextStyles.darkGreyColor14Medium,
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: 130,
                      child: ElevatedButton(
                        style: AppButtonStyles.orderButtonStyle,
                        onPressed: () {},
                        child: Text(
                          'Order Now',
                          style: AppTextStyles.whiteColor16OpenSansBold
                              .copyWith(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://highfivebooks.org/cdn/shop/files/9781484780657.jpg',
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        AppIndicator(pagesNumber: 3, pageIndex: 0),
      ],
    );
  }
}
