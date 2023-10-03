import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gap extends StatelessWidget {
  final double? height;
  final double? width;

  const Gap({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.toString().isEmpty ? 0 : height?.h,
      width: height.toString().isEmpty ? 0 : width?.w,
    );
  }
}
