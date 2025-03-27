
import 'package:ayaty/Features/sebha/presentation/views/sebha_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaCounter extends StatelessWidget {
  const SebhaCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 230.h,
        width: 230.w,
        decoration: BoxDecoration(
          color: const Color(0xffF6F1DE),
          borderRadius: BorderRadius.circular(120.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 80.h,
                width: 200.w,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(120.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    counter.toString(), 
                    style: GoogleFonts.aclonica(
                      color: Colors.grey,
                      fontSize: 28.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
