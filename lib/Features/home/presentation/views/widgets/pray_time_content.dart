import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayTime extends StatelessWidget {
  const PrayTime({
    super.key,
    required this.prayName,
    required this.time,
    required this.timeIcon,
  });
  final String prayName;
  final String time;
  final IconData timeIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          prayName,
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
        FaIcon(
          timeIcon,
          color: Colors.white,
          size: 20,
        ),
        Text(
          time,
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
