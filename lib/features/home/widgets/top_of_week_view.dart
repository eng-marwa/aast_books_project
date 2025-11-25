import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:aast_books_project/features/home/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class TopOfWeekView extends StatelessWidget {
  const TopOfWeekView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWidget(sectionTitle: 'Top of Week', hasSeeAllButton: true),
        SizedBox(height: 8,),
        SizedBox(height: 205,
          child: ListView.separated(shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(fit: BoxFit.cover,
                    'https://m.media-amazon.com/images/I/81IzbD2IiIL._AC_UF1000,1000_QL80_.jpg',
                  width: 120,height: 150,),
                ),
                SizedBox(height: 12,),
                //text
                Text('kite', style: AppTextStyles.darkGreyColor14Medium),
                SizedBox(height: 5,),
                //text
                Text(
                  '\$ 12.0',
                  style: AppTextStyles.primaryColor12Medium.copyWith(
                    fontWeight: FontWeight.bold,
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
