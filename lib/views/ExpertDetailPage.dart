import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import 'ExpandableTextSection.dart';

class ExpertDetailPage extends StatelessWidget {
  final int imageCount = 9;
  final int giftCount = 9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'assets/svg_files/back_arrow.svg',
            height: 24,
            width: 24,
          ),
        ),
        title: Row(
          children: [
            Text(
              'Rakesh Kaushik',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xFFFCFCFC), // Text color
              ),
            ),

            SizedBox(width: 6),
            CircleAvatar(radius: 5, backgroundColor: Colors.green),
          ],
        ),
        actions: [
          SvgPicture.asset(
            'assets/svg_files/share.svg',
            height: 20,
            width: 20,
          ),
          SizedBox(width: 12),
          SvgPicture.asset(
            'assets/svg_files/more_vertical.svg',
            height: 20,
            width: 20,
          ),
          SizedBox(width: 12),
        ],
      ),
      body: Stack(


        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[100],
                      ),
                    ),
                    SizedBox(height: 8),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Rakesh Kaushik',
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Upper Section
                            Container(
                              width: double.infinity,
                              height: 45, // Reduced height
                              color: Colors.blue.withOpacity(0.1),
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg_files/star.svg',
                                          width: 18,
                                          height: 18,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(width: 4),
                                        Text('4.2', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600)),
                                        SizedBox(width: 4),
                                        Text('Rating', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500)),
                                        SizedBox(width: 16),
                                        Text('10', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600)),
                                        Text(' Experience', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500)),
                                        SizedBox(width: 16),
                                        Text('10K', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600)),
                                        Text(' Followers', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Lower Section
                            Container(
                              width: double.infinity,
                              height: 45, // Reduced height
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg_files/call.svg',
                                          width: 18,
                                          height: 18,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '9K',
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF4E3C18),
                                          ),
                                        ),
                                        Text(
                                          ' mins',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF4E3C18),
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        SvgPicture.asset(
                                          'assets/svg_files/chat.svg',
                                          width: 18,
                                          height: 18,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '22K',
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF4E3C18),
                                          ),
                                        ),
                                        Text(
                                          ' mins',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF4E3C18),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Follow Button
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF0054DC),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                                      minimumSize: Size(0, 0), // Remove default minimum size constraints
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrink tap target if needed
                                    ),
                                    child: Text(
                                      'Follow',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFf2cc7a),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),





                SizedBox(height: 16),



                Text('Images', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                SizedBox(
                  height: 122,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageCount,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 122,
                        height: 122,
                        margin: EdgeInsets.only(right: index == imageCount - 1 ? 0 : 8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16),

                Text('Send Gifts', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: giftCount,
                    itemBuilder: (context, index) {
                      final giftNames = ['Pooja', 'Heart', 'Rose Flower', 'Gem', 'Star', 'Moon', 'Sun', 'Flower', 'Leaf'];
                      final giftPrices = [47, 23, 68, 85, 12, 30, 45, 50, 27];
                      return Container(
                        width: 80,
                        margin: EdgeInsets.only(right: index == giftCount - 1 ? 0 : 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              giftNames[index],
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                height: 1.0,
                                color: Color(0xFF393F43),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '₹ ${giftPrices[index]}',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                height: 1.0,
                                color: Color(0xFF393F43),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),


                SizedBox(height: 16),
                ExpandableTextSection(
                  title: 'Profile Summary',
                  content: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium... '
                      'iste natus error sit voluptatem accusantium doloremque laudantium... '
                      'Additional text can go here. This is an example of how a longer text will appear in this section.',
                ),


                SizedBox(height: 16),
                ExpandableTextSection(
                  title: 'Specialization',
                  content: 'Expert in Love, Marriage, Career, Bossiness',
                ),



                SizedBox(height: 16),
                ExpandableTextSection(
                  title: 'Languages',
                  content: 'Kannada, Telugu, Tamil, English, Hindi',
                ),

                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {}, // Add your chat functionality here
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg_files/headset.svg',
                              height: 24,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Chat With Assistant',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Users Review ',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black, // Main text color
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),

                                child: Text(
                                  '(400 peoples)',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF75757C), // Text color for background
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Text(
                        'View all',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2f82f8),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 80),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 24),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: buildActionButton('assets/svg_files/bubble_chat.svg', '10₹/min'),
                  ),
                  SizedBox(width: 8), // Small spacing between buttons
                  Expanded(
                    child: buildActionButton('assets/svg_files/call_white.svg', '10₹/min'),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: buildActionButton('assets/svg_files/video_call.svg', '10₹/min'),
                  ),
                ],
              ),
            ),
          ),

        ],



      ),
    );
  }

  Widget buildActionButton(String svgPath, String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgPath,
            width: 16,
            height: 16,
            color: Colors.white,
          ),
          SizedBox(width: 4),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }


}
