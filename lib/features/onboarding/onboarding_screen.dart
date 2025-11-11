import 'package:aast_books_project/features/onboarding/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnboardingItem());
  }
}
