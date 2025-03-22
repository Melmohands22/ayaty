
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayClock extends StatelessWidget {
  const PrayClock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("04:40",
            style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.w900)),
        Text("Fajr 3 hours 9 min left",
            style: GoogleFonts.lato(
              color: Colors.white.withOpacity(0.8),
              fontSize: 18,
            )),
      ],
    );
  }
}
