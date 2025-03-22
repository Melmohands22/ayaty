
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SurahName extends StatelessWidget {
  const SurahName({
    super.key,
    required this.surahName,
    required this.surahMeaning,
    required this.surahNumber,
    required this.surahNameArabic,
  });
  final String surahName;
  final String surahMeaning;
  final String surahNumber;
  final String surahNameArabic;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.teal,
            ),
            child: Center(
              child: Text(
                surahNumber,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              surahName,
              style: GoogleFonts.cairo(color: Colors.teal, fontSize: 22.sp),
            ),
            Text(
              surahMeaning,
              style: GoogleFonts.cairo(fontSize: 10.sp),
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                surahNameArabic,
                style: GoogleFonts.cairo(fontSize: 22.sp, color: Colors.black),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
