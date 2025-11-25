import 'package:aast_books_project/features/home/widgets/authors_view.dart';
import 'package:aast_books_project/features/home/widgets/best_vendors_view.dart';
import 'package:aast_books_project/features/home/widgets/home_slider.dart';
import 'package:aast_books_project/features/home/widgets/top_of_week_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            SizedBox(height: 162, child: HomeSlider(),),
            SizedBox(height: 24),
            TopOfWeekView(),
            SizedBox(height: 24),
            BestVendorsView(),
            SizedBox(height: 24),
            AuthorsView(),
          ],
        ),
      ),
    );
  }
}
