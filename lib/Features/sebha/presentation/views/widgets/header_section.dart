import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  final String selectedValue;
  final VoidCallback onPressed;

  const HeaderSection({
    super.key,
    required this.selectedValue,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            selectedValue,
            softWrap: true,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairoPlay(
              color: Colors.teal,
              fontSize: 28.sp,
            ),
          ),
          DrawerButton(onPressed: onPressed),
        ],
      ),
    );
  }
}
