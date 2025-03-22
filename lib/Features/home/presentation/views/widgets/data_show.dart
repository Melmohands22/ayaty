import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDataShow extends StatelessWidget {
  const CustomDataShow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "28  Novamber 2024 ",
          style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: FaIcon(
            FontAwesomeIcons.calendarDays,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
