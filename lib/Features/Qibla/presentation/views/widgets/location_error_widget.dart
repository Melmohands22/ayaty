import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationErrorWidget extends StatelessWidget {
  const LocationErrorWidget({super.key, required this.error, required this.callback});
  final String? error;
  final Function? callback;
  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffb00020);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(

            Icons.location_off,
            size:150,
            color: errorColor,
          ),
          SizedBox(height: 32.h),
          Text(
            error!,
            style: TextStyle(color: errorColor, fontSize: 20.sp , fontWeight: FontWeight.bold),
          ),
           SizedBox(height: 32.h),
          ElevatedButton(onPressed: (){if (callback != null)callback!();}, child:const Text('Retry')),
        ],
      ),
    );
  }
}
