import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:aast_books_project/features/home/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class AuthorsView extends StatelessWidget {
  const AuthorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWidget(sectionTitle: 'Authors', hasSeeAllButton: true),
        SizedBox(height: 8),
        SizedBox(
          height: 183,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                    'https://groveatlantic-b.b-cdn.net/core/wp-content/uploads/2017/03/jfauthorphoto2019-768x768.jpg',
                  ),
                ),
                SizedBox(height: 12,),
                Text(
                  'John Freeman',
                  style: AppTextStyles.darkGreyColor14Medium.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Writer',
                  style: AppTextStyles.greyColor16Regular.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            separatorBuilder: (context, index) => SizedBox(width: 12),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
