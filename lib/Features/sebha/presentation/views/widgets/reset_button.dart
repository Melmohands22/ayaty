
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback resetCounter;

  const ResetButton({
    required this.resetCounter,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: resetCounter,
      child: Text(
        " تصفير",
        style: GoogleFonts.reemKufi(
          color: Colors.teal,
          fontSize: 22.sp,
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 3),
              blurRadius: 7.r,
            ),
          ],
        ),
      ),
    );
  }
}
