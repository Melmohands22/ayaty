import 'package:ayaty/Features/sebha/presentation/views/widgets/sebha_buttons.dart';
import 'package:ayaty/Features/sebha/presentation/views/widgets/sebha_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

int counter = 0; // Global variable

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});
  static const String id = 'SebhaView';

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          SebhaCounter(), 
          SizedBox(height: 120.h),
          SebhaButtons(onIncrement: incrementCounter, onReset: resetCounter),
        ],
      ),
    );
  }
}

