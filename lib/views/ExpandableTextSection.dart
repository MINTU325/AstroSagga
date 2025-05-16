import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class ExpandableTextSection extends StatelessWidget {
  final String title;
  final String content;

  const ExpandableTextSection({
    required this.title,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF202124),
          ),
        ),
        SizedBox(height: 4),
        ReadMoreText(
          content,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF393f43),
          ),
          trimLines: 2,
          colorClickableText: Colors.blue,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Read More',
          trimExpandedText: ' Read Less',
          moreStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF75757C),
          ),
          lessStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF75757C),
          ),
        ),
      ],
    );
  }
}
