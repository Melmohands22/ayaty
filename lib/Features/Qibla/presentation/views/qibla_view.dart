import 'package:ayaty/Features/Qibla/presentation/views/widgets/qibla_compass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';

class QiblaView extends StatefulWidget {
  const QiblaView({super.key});
  static const String id = 'QiblaView';

  @override
  State<QiblaView> createState() => _QiblaViewState();
}

class _QiblaViewState extends State<QiblaView> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: FutureBuilder(
            future: _deviceSupport,
            builder: (_, AsyncSnapshot<bool?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    'Error: ${snapshot.error.toString()}',
                    style: const TextStyle(color: Colors.red),
                  ),
                );
              }
              if (snapshot.data!) {
                return QiblaCompass();
              } else {
                return const Center(
                  child: Text('Device not supported'),
                );
              }
            }));
  }
}
