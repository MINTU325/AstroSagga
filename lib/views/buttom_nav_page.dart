// views/buttom_nav_page.dart
import 'package:astro_sagga/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/navigation_controller.dart';
import 'horizontal_menu.dart';
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
          selectedFontSize: 14,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
