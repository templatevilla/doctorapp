import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSpace extends StatelessWidget {
  final double? height;
  const AppSpace({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height??16.h,
    );
  }
}
