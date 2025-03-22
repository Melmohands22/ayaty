import 'package:ayaty/Features/Qibla/presentation/views/qibla_view.dart';
import 'package:ayaty/Features/Surah/presentation/views/surarh_view.dart';
import 'package:ayaty/Features/home/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
          color: Color(0xffEEFAED),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ]),
      child: GNav(
        rippleColor: Colors.teal[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 8,
        activeColor: Colors.black,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: Duration(milliseconds: 400),
        tabBackgroundColor: Colors.teal,
        color: Colors.black,
        curve: Curves.fastOutSlowIn,
        tabs: [
          GButton(
            icon: CupertinoIcons.home,
            text: 'Home',
            onPressed: () {
              Navigator.pushNamed(context, HomeView.id);
            },
          ),
          GButton(
            icon: FlutterIslamicIcons.quran,
            text: 'Surah',
            onPressed: () {
              Navigator.pushNamed(context, SurarhView.id);
            },
          ),
          GButton(
            icon: FlutterIslamicIcons.qibla,
            text: 'Qibla',
            onPressed: () {
              Navigator.pushNamed(context, QiblaView.id);
            },
          ),
          GButton(
            icon: FlutterIslamicIcons.tasbih,
            text: 'Sebha',
          ),
        ],
      ),
    );
  }
}
