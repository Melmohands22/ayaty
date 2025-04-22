
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaCounter extends StatelessWidget {
  final int counter;
  final VoidCallback incrementCounter;

  const SebhaCounter({
    required this.counter,
    required this.incrementCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/sebha.png',
          height: 300.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0, left: 80),
          child: Center(
            child: Text(
              counter.toString(),
              style: GoogleFonts.orbitron(
                color: Color(0xffF6F1DE),
                fontSize: 32.sp,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 3),
                    blurRadius: 7.r,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130.0),
          child: Center(
            child: TextButton(
              onPressed: incrementCounter,
              child: Text(
                "سبح",
                style: GoogleFonts.reemKufi(
                  color: Color(0xffF6F1DE),
                  fontSize: 40.sp,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 3),
                      blurRadius: 7.r,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
