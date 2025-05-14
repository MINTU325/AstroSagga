// views/horizontal_menu.dart
import 'package:flutter/material.dart';

class HorizontalMenu extends StatelessWidget {
  final List<MenuItem> menuItems = const [
    MenuItem('Match Making', Icons.favorite, Colors.red),
    MenuItem('Subh Muhurat', Icons.brightness_5, Colors.purple),
    MenuItem('Horoscope', Icons.auto_awesome, Colors.orange),
    MenuItem('Kundali', Icons.grid_3x3, Colors.teal),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
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
                CircleAvatar(
                  backgroundColor: menuItems[index].backgroundColor,
                  radius: 28,
                  child: Icon(menuItems[index].icon, color: Colors.white),
                ),
                const SizedBox(height: 4),
                Text(menuItems[index].title, style: const TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}

class MenuItem {
  final String title;
  final IconData icon;
  final Color backgroundColor;

  const MenuItem(this.title, this.icon, this.backgroundColor);
}
