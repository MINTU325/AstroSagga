import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ExpertDetailPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/svg_files/blue_sun.svg', width: 28, height: 28),
            Row(
              children: [
                _buildIcon('search.svg'),
                _buildIcon('bell.svg'),
                _buildWalletWidget(),
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
            const SizedBox(height: 16),
            ExpertsGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(String asset) {
    return IconButton(
      icon: SvgPicture.asset(
        'assets/svg_files/$asset',
        height: 24,
        width: 24,
        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
      ),
      onPressed: () {},
    );
  }

  Widget _buildWalletWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/svg_files/wallet.svg', width: 18, height: 18, color: Colors.black),
          const SizedBox(width: 4),
          const Text(
            '100 ₹',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              height: 23 / 13,
            ),
          ),
        ],
      ),
    );
  }
}



class HorizontalMenu extends StatelessWidget {
  final List<MenuItem> menuItems = const [
    MenuItem(
      'Match Making',
      'assets/svg_files/match_making.svg',
      Colors.red,
    ),
    MenuItem(
      'Subh Muhurat',
      'assets/svg_files/subh_muhurat.svg',
      Colors.purple,
    ),
    MenuItem(
      'Horoscope',
      'assets/svg_files/Subtract.svg',
      Colors.orange,
    ),
    MenuItem(
      'Kundali',
      'assets/svg_files/kundali.svg',
      Colors.teal,
    ),
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
            padding: const EdgeInsets.only(right: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 53.27,
                  height: 54,
                  decoration: BoxDecoration(
                    color: menuItems[index].backgroundColor,
                    borderRadius: BorderRadius.circular(9.53),
                    border: Border.all(color: Colors.white, width: 0.79),
                  ),
                  child: Center(
                    child:
                    SvgPicture.asset(
                      menuItems[index].svgPath,
                      width: 28,
                      height: 28,
                      // Default SVG color as white
                    )
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  menuItems[index].title,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    letterSpacing: 0,
                    color: Color(0xFF393F44), // Default text color
                  ),
                ),
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
  final String svgPath;
  final Color backgroundColor;

  const MenuItem(
      this.title,
      this.svgPath,
      this.backgroundColor,
      );
}



class HorizontalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        // Replace solid color with vertical gradient
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey.shade400, // light on top
            Colors.grey.shade500, // dark on bottom
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Explore your zodiac and\ncosmic insights live!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 3,
                  color: Colors.black26,
                  offset: Offset(0, 3),  // shadow only below the text
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 28,  // diameter = radius * 2
                    height: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,       // no fill color
                      border: Border.all(
                        color: Colors.white,         // stroke color
                        width: 1,                     // stroke width
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),
                  Text(
                    "Rakesh Kaushik",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      height: 16 / 12, // line height 16px / 12px = 1.33
                      letterSpacing: 0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2), // lighter background, semi-transparent white
                  borderRadius: BorderRadius.circular(6), // rounded corners
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // wrap content tightly
                  children: [
                    const Icon(Icons.remove_red_eye, size: 16, color: Colors.white),
                    const SizedBox(width: 4),
                    Text(
                      "13k",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,  // 500 weight
                        fontSize: 12,
                        height: 16 / 12,              // line height ratio = 1.33
                        letterSpacing: 0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}


class ExpertCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExpertDetailPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/64"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 4,
                  right: 4,
                  child: Icon(Icons.circle, color: Colors.green, size: 12),
                ),
              ],
            ),
            const SizedBox(height: 9),
            const Text('Rakesh Kaushik', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Rating : ',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFFBFC3C7),
                    ),
                  ),
                  const WidgetSpan(
                    child: Text('⭐ '),
                  ),
                  TextSpan(
                    text: '4.7',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFF393F43),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Exp : ',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFFBFC3C7),
                    ),
                  ),
                  TextSpan(
                    text: '10 Years',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFF393F43),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '10₹/min',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFF202124),
                  ),
                ),
                Text(
                  '20₹/min',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                    height: 1.0,
                    letterSpacing: 0,
                    decoration: TextDecoration.lineThrough,
                    color: Color(0xFF75757C),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class ExpertsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Our Experts",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SvgPicture.asset(
                'assets/svg_files/filter.svg',
                height: 24,
                width: 24,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Expanded(
            child: GridView.builder(
              itemCount: 6, // Replace with your data list length
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return ExpertCard(); // your custom card widget
              },
            ),
          ),
        ],
      ),
    );
  }
}
