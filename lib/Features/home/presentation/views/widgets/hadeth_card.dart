import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HadethCard extends StatelessWidget {
  const HadethCard({
    super.key,
    required this.hadeth,
  });

  final String hadeth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'assets/images/close-up-islamic-new-year-concept.jpg',
                    width: 1.sw,
                    height: 230.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                hadeth,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
