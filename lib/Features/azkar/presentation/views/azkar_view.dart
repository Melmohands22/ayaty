import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});
  static const String id = 'AzkarView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F1DE),
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Container(
                height: 80.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: Color(0xffF6F1DE),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5.r,
                      blurRadius: 7.r,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'اذكار المساء',
                    style: GoogleFonts.rakkas(
                      color: Colors.teal,
                      fontSize: 28.sp,
                    ),
                  ),
                ),
              ),
              Container(
                height: 80.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: Color(0xffF6F1DE),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5.r,
                      blurRadius: 7.r,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'اذكار الصباح',
                    style: GoogleFonts.rakkas(
                      color: Colors.teal,
                      fontSize: 28.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          AzzkarELsbah(),
        ],
      ),
    );
  }
}

class AzzkarELsbah extends StatelessWidget {
  const AzzkarELsbah({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: 100.h,
      ),
      decoration: BoxDecoration(
        color: Color(0xffF6F1DE),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2.r,
            blurRadius: 7.r,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: Text(
              textDirection: TextDirection.rtl,
              "اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك",
              style: GoogleFonts.kufam(
                color: Colors.teal,
                fontSize: 16.sp,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          AzkkarCounter(),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}

class AzkkarCounter extends StatelessWidget {
  const AzkkarCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(120.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5.r,
            blurRadius: 7.r,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Center(
        child: Text(
          '4',
          style: GoogleFonts.aclonica(
            color: Color(0xffF6F1DE),
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
