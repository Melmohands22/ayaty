import 'package:ayaty/Features/home/presentation/views/widgets/custom_nav_bar.dart';
import 'package:ayaty/Features/home/presentation/views/widgets/home_slider.dart';
import 'package:ayaty/Features/home/presentation/views/widgets/prayer_time_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F1DE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            HomeSlider(),
            
            PrayerTimeSection()
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomNavBar(),
      ),
    );
  }
}
