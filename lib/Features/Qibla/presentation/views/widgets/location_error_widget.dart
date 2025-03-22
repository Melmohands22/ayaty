import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationErrorWidget extends StatefulWidget {
  const LocationErrorWidget({super.key, required this.error, required this.callback});
  
  final String? error;
  final Future<void> Function()? callback; 

  @override
  State<LocationErrorWidget> createState() => _LocationErrorWidgetState();
}

class _LocationErrorWidgetState extends State<LocationErrorWidget> {
  bool _isLoading = false;

  Future<void> _handleRetry() async {
    if (widget.callback == null) return;

    setState(() => _isLoading = true);

    await widget.callback!(); 

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffb00020);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.location_off,
            size: 150,
            color: errorColor,
          ),
          SizedBox(height: 32.h),
          Text(
            widget.error!,
            style: TextStyle(color: errorColor, fontSize: 20.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 32.h),
          _isLoading
              ? const CircularProgressIndicator() 
              : ElevatedButton(
                  onPressed: _handleRetry,
                  child: const Text('Retry'),
                ),
        ],
      ),
    );
  }
}
