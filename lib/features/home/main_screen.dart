import 'package:aast_books_project/core/constants/ui_constants/app_ui_constants.dart';
import 'package:aast_books_project/core/resources/app_colors.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:aast_books_project/features/home/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: AppUiConstants.bottomNavItems[pageIndex].label,
        haveSearchButton: true,haveNotificationButton: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.lightGreyFAColor,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: AppUiConstants.bottomNavItems
            .map(
              (e) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  e.icon,
                  colorFilter: ColorFilter.mode(
                    pageIndex == AppUiConstants.bottomNavItems.indexOf(e)
                        ? AppColors.primaryColor
                        : AppColors.greyColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: e.label,
              ),
            )
            .toList(),
        unselectedLabelStyle: AppTextStyles.greyColor12Regular,
        selectedLabelStyle: AppTextStyles.primaryColor12Medium,
      ),
      body: AppUiConstants.bottomNavItems[pageIndex].page,
    );
  }
}

/*
BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        backgroundColor: AppColors.lightGreyFAColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),


      ================================
      NavigationBar(selectedIndex: pageIndex,onDestinationSelected: (value) {
        setState(() {
          pageIndex = value;
        });
      },destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
        NavigationDestination(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ])
 */
