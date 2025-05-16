import 'package:astro_sagga/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/navigation_controller.dart';
import 'courses_page.dart';
import 'shop_page.dart';
import 'profile_page.dart';

class ButtomNavPage extends StatelessWidget {
  ButtomNavPage({super.key});

  final NavigationController navController = Get.put(NavigationController());

  final List<Widget> _screens = const [
    HomePage(),
    CoursesPage(),
    ShopPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(() => _screens[navController.selectedIndex.value]),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: navController.selectedIndex.value,
          onTap: navController.changeTab,
          selectedFontSize: 13,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: [
            _buildNavItem('home.svg', 'Home', 0),
            _buildNavItem('course.svg', 'Courses', 1),
            _buildNavItem('shop.svg', 'Shop', 2),
            _buildNavItem('profile.svg', 'Profile', 3),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(String asset, String label, int index) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/svg_files/$asset',
        height: 24,
        width: 24,
        colorFilter: ColorFilter.mode(
          navController.selectedIndex.value == index ? Colors.black : Colors.grey,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
  }
}