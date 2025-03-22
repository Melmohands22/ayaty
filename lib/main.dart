import 'package:ayaty/Features/Qibla/presentation/views/qibla_view.dart';
import 'package:ayaty/Features/Surah/presentation/views/surarh_view.dart';
import 'package:ayaty/Features/home/presentation/views/home_view.dart';
import 'package:ayaty/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Ayaty());
}

class Ayaty extends StatelessWidget {
  const Ayaty({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(child: MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        SurarhView.id: (context) => const SurarhView(),
        QiblaView.id :(context) => const QiblaView(),
      },
      debugShowCheckedModeBanner: false,
      home:const  SplashView(),
    ));
  }
}
