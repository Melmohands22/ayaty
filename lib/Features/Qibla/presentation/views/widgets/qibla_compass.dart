import 'dart:async';
import 'package:ayaty/Features/qibla/presentation/views/widgets/location_error_widget.dart';
import 'package:ayaty/Features/qibla/presentation/views/widgets/qibla_compass_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';

class QiblaCompass extends StatefulWidget {
  const QiblaCompass({super.key});

  @override
  State<QiblaCompass> createState() => _QiblaCompassState();
}

class _QiblaCompassState extends State<QiblaCompass> {
  final StreamController<LocationStatus> _locationStreamController =
      StreamController<LocationStatus>.broadcast();

  Stream<LocationStatus> get locationStream => _locationStreamController.stream;

  @override
  void initState() {
    super.initState();
    _checkLocationStatus();
  }

  Future<void> _checkLocationStatus() async {
    final locationStatus = await FlutterQiblah.checkLocationStatus();
    
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await FlutterQiblah.requestPermissions();
    }

    final status = await FlutterQiblah.checkLocationStatus();
    _locationStreamController.sink.add(status);
  }

  @override
  void dispose() {
    _locationStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: StreamBuilder<LocationStatus>(
        stream: locationStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          if (snapshot.hasError) {
            return Text(
              'Error: ${snapshot.error}',
              style: const TextStyle(color: Colors.red),
            );
          }

          final locationStatus = snapshot.data!;
          if (!locationStatus.enabled) {
            return LocationErrorWidget(
              error: 'Please enable location services',
              callback: _checkLocationStatus,
            );
          }

          switch (locationStatus.status) {
            case LocationPermission.denied:
            case LocationPermission.deniedForever:
              return LocationErrorWidget(
                error: 'Location permission denied. Please enable it in settings.',
                callback: _checkLocationStatus,
              );
            case LocationPermission.whileInUse:
            case LocationPermission.always:
              return const QiblaCompassWidget();
            case LocationPermission.unableToDetermine:
              return const Text('Unable to determine location permission.');
          }
        },
      ),
    );
  }
}
