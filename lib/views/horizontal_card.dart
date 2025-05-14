import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            HorizontalMenu(),
            const SizedBox(height: 16),
            HorizontalCard(),
          ],
        ),
      ),
    );
  }
}

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

class HorizontalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Explore your zodiac and\ncosmic insights live!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 2,
                  color: Colors.black26,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white24,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Rakesh Kaushik",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.remove_red_eye, size: 18, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    "13k",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
