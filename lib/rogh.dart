import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final RxInt _selectedIndex = 0.obs;

  final List<Widget> _screens = const [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Courses Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Shop Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  final List<MenuItem> menuItems = [
    MenuItem('Match Making', Icons.favorite, Colors.red),
    MenuItem('Subh Muhurat', Icons.brightness_5, Colors.purple),
    MenuItem('Horoscope', Icons.auto_awesome, Colors.orange),
    MenuItem('Kundali', Icons.grid_3x3, Colors.teal),
    MenuItem('Numerology', Icons.numbers, Colors.green),
    MenuItem('Tarot', Icons.visibility, Colors.pink),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.wb_sunny_rounded, color: Colors.blue, size: 28),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.notifications_none, color: Colors.black),
                  onPressed: () {},
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.lock, size: 16),
                      SizedBox(width: 4),
                      Text('100 ₹', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100, // Height for the horizontal list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: menuItems[index].backgroundColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(menuItems[index].icon, color: Colors.white, size: 32),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        menuItems[index].title,
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Stack(
              children: List.generate(_screens.length, (index) {
                return Obx(
                      () => Visibility(
                    visible: _selectedIndex.value == index,
                    child: _screens[index],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
        bottomNavigationBar: Obx(
              () => BottomNavigationBar(
            currentIndex: _selectedIndex.value,
            onTap: (index) => _selectedIndex.value = index,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Shop'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
            selectedFontSize: 14,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            showUnselectedLabels: true,
            showSelectedLabels: true,
          ),
        ),
    );
  }
}

class MenuItem {
  final String title;
  final IconData icon;
  final Color backgroundColor;

  MenuItem(this.title, this.icon, this.backgroundColor);
}
