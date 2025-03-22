import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabChange;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: const Color(0xffEEFAED),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: GNav(
        selectedIndex: currentIndex,
        onTabChange: onTabChange,
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
          ),
          GButton(
            icon: FlutterIslamicIcons.quran,
            text: 'Surah',
          ),
          GButton(
            icon: FlutterIslamicIcons.qibla,
            text: 'Qibla',
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