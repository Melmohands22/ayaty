import 'package:ayaty/Features/home/presentation/views/widgets/pray_time_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrayTimeItem extends StatelessWidget {
  const PrayTimeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PrayTime(
            prayName: 'Fajr',
            time: '04:40',
            timeIcon: FontAwesomeIcons.moon,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PrayTime(
            prayName: 'Dzuhr',
            time: '11:30',
            timeIcon: FontAwesomeIcons.sun,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PrayTime(
            prayName: 'Asr',
            time: '14:15',
            timeIcon: FontAwesomeIcons.cloudSun,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PrayTime(
            prayName: 'Maghrib',
            time: '17:05',
            timeIcon: FontAwesomeIcons.sun,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PrayTime(
            prayName: 'Isha',
            time: '18:30',
            timeIcon: FontAwesomeIcons.solidMoon,
          ),
        ),
      ],
    );
  }
}
