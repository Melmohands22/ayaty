import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaButtons extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onReset;

  const SebhaButtons({
    super.key,
    required this.onIncrement,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ButtonStyle(),
          onPressed: onReset, 
          child: Text(
            "تصفير",
            style: GoogleFonts.rakkas(
                color: Colors.teal, fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(),
          onPressed: onIncrement, 
          child: Text(
            "اذكر الله",
            style: GoogleFonts.rakkas(
                color: Colors.teal, fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
