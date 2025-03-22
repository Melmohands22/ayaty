import 'package:ayaty/Features/Surah/presentation/views/widgets/surah_name.dart';
import 'package:ayaty/Features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SurarhView extends StatelessWidget {
  const SurarhView({super.key});
  static const String id = 'SurarhView';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1DE),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 10.0),
          children: [
            CustomSearchBar(),
            SizedBox(height: 32.h),
            SurahName(
              surahName: 'Al-Faatiha',
              surahMeaning: 'The Opening(7)',
              surahNumber: '1',
              surahNameArabic: 'الفاتحه',
            ),
            SizedBox(height: 10.h),
            Divider(thickness: 1, color: Colors.grey),
            SizedBox(height: 10.h),
            SurahName(
              surahName: 'Al-Baqarah',
              surahMeaning: 'The Cow(286)',
              surahNumber: '2',
              surahNameArabic: 'البقره',
            ),
            SizedBox(height: 10.h),
            Divider(thickness: 1, color: Colors.grey),
            SizedBox(height: 10.h),
            SurahName(
              surahName: 'Al-Imran',
              surahMeaning: 'The Family of Imran(200)',
              surahNumber: '3',
              surahNameArabic: 'آل عمران',
            ),
            SizedBox(height: 10.h),
            Divider(thickness: 1, color: Colors.grey),
            SizedBox(height: 10.h),
            SurahName(
              surahName: 'An-Nisa',
              surahMeaning: 'Wemen(176)',
              surahNumber: '4',
              surahNameArabic: 'النساء',
            ),
            SizedBox(height: 10.h),
            Divider(thickness: 1, color: Colors.grey),
            SizedBox(height: 10.h),
            SurahName(
              surahName: 'Al-Maaida',
              surahMeaning: 'The Table Spread(120)',
              surahNumber: '5',
              surahNameArabic: 'المائده',
            ),
            SizedBox(height: 10.h),
            Divider(thickness: 1, color: Colors.grey),
            SizedBox(height: 10.h),
            SurahName(
              surahName: 'Al-Anaam',
              surahMeaning: 'The Cattle(165)',
              surahNumber: '6',
              surahNameArabic: 'الأنعام',
            ),
          ],
        ),
      ),
    );
  }
}
