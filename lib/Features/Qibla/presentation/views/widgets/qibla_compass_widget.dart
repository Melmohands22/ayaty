
import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class QiblaCompassWidget extends StatelessWidget {
  const QiblaCompassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final compassSvg = SvgPicture.asset('assets/images/compass.svg');
    final needleSvg = SvgPicture.asset(
      'assets/images/needle.svg',
      fit: BoxFit.contain,
      height: 300.h,
      alignment: Alignment.center,
    );

    return StreamBuilder<QiblahDirection>(
      stream: FlutterQiblah.qiblahStream,
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (!snapshot.hasData) {
          return const Text('Failed to fetch Qibla direction.');
        }

        final qiblahDirection = snapshot.data!;
        final qiblaAngle = qiblahDirection.qiblah * (pi / 180); 

        return Stack(
          alignment: Alignment.center,
          children: [
            compassSvg, 
            Transform.rotate(
              angle: qiblaAngle, 
              child: needleSvg,
            ),
            Positioned(
              bottom: 8.h,
              child: Text(
                'Qibla: ${qiblahDirection.qiblah.toStringAsFixed(2)}°',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }
}
