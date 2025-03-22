import 'package:ayaty/Features/Qibla/presentation/views/qibla_view.dart';
import 'package:ayaty/Features/Surah/presentation/views/surarh_view.dart';
import 'package:ayaty/Features/home/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
static const String id = 'MainView';
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeView(),
    const SurarhView(),
    const QiblaView(),
    const Center(child: Text("Sebha View")), 
  ];

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 60,
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
          rippleColor: Colors.teal[300]!,
          hoverColor: Colors.grey[100]!,
          gap: 8,
          activeColor: Colors.black,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: Colors.teal,
          color: Colors.black,
          curve: Curves.fastOutSlowIn,
          selectedIndex: _selectedIndex,
          onTabChange: _onTabChange, // Handle tab change
          tabs: const [
            GButton(icon: CupertinoIcons.home, text: 'Home'),
            GButton(icon: FlutterIslamicIcons.quran, text: 'Surah'),
            GButton(icon: FlutterIslamicIcons.qibla, text: 'Qibla'),
            GButton(icon: FlutterIslamicIcons.tasbih, text: 'Sebha'),
          ],
        ),
      ),
    );
  }
}
