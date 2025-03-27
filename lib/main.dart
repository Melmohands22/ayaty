import 'package:ayaty/Features/qibla/presentation/views/qibla_view.dart';
import 'package:ayaty/Features/Surah/presentation/views/surarh_view.dart';
import 'package:ayaty/Features/home/presentation/views/home_view.dart';
import 'package:ayaty/Features/home/presentation/views/main_view.dart';
import 'package:ayaty/Features/sebha/presentation/views/sebha_view.dart';
import 'package:ayaty/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Ayaty());
}

class Ayaty extends StatelessWidget {
  const Ayaty({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        child: MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: GoogleFonts.alice().fontFamily,
      ),
      routes: {
        HomeView.id: (context) => const HomeView(),
        SurarhView.id: (context) => const SurarhView(),
        QiblaView.id: (context) => const QiblaView(),
        MainView.id: (context) => const MainView(),
        SebhaView.id:(context) => const SebhaView(),
      },
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      onGenerateRoute: (settings) {
        if (settings.name == MainView.id) {
          return MaterialPageRoute(builder: (context) => const MainView());
        }
        return null;
      },
    ));
  }
}
