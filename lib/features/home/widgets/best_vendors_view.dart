import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_icons.dart';
import 'package:aast_books_project/features/home/widgets/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestVendorsView extends StatelessWidget {
  const BestVendorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SectionWidget(sectionTitle: 'Best Vendors', hasSeeAllButton: true),
      SizedBox(height: 8,),
      SizedBox(height: 80,
        child: ListView.separated(scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              Container(width:100, decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lightGreyFAColor),
                alignment: Alignment.center,
                child: Image.asset(AppIcons.ws
                ),),
          itemCount: 5,
          separatorBuilder: (context, index) => SizedBox(width: 12,),),
      )
    ],);
  }
}
