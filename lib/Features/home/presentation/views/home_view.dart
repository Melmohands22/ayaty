import 'package:ayaty/Features/home/presentation/views/widgets/home_slider.dart';
import 'package:ayaty/Features/home/presentation/views/widgets/prayer_time_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F1DE),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text(
          'Ayaty',
          style: GoogleFonts.alice(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            HomeSlider(),
            SizedBox(
              height: 20.h,
            ),
            PrayerTimeSection()
          ],
        ),
      ),
      
    );
  }
}
