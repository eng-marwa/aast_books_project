import 'package:aast_books_project/core/resources/app_icons.dart';
import 'package:aast_books_project/features/home/screen/cart_screen.dart';
import 'package:aast_books_project/features/home/screen/category_screen.dart';
import 'package:aast_books_project/features/home/screen/home_screen.dart';
import 'package:aast_books_project/features/home/screen/profile_screen.dart';
import 'package:aast_books_project/features/home/ui_model/nav_item.dart';
import 'package:aast_books_project/features/onboarding/presentation/ui_model/onboarding_data.dart';

class AppUiConstants {
  AppUiConstants._();

  static List<OnboardingData> onboardingData = [
    OnboardingData(
      'Now reading books will be easier',
      'Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.',
      AppIcons.onboarding1,
    ),
    OnboardingData(
      'Your Bookish Soulmate Awaits',
      'Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.',
      AppIcons.onboarding2,
    ),
    OnboardingData(
      'Start Your Adventure',
      'Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let\'s go!',
      AppIcons.onboarding3,
    ),
  ];

  static List<NavItem> bottomNavItems = [
    NavItem(icon: AppIcons.home, label: 'Home', page: HomeScreen()),
    NavItem(icon: AppIcons.category, label: 'Category', page: CategoryScreen()),
    NavItem(icon: AppIcons.cart, label: 'Cart', page: CartScreen()),
    NavItem(icon: AppIcons.profile, label: 'Profile', page: ProfileScreen()),
  ];
}
