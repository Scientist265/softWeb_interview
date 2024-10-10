import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:pinput/pinput.dart';

import '../../../core/config/theme/colors.dart';

class OtpWidget extends StatelessWidget {
  const OtpWidget({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pinput(
        controller: controller,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        length: 6,
        autofocus: true,
        keyboardType: TextInputType.number,
        defaultPinTheme: PinTheme(
            height: 52.h,
            width: 46.w,
            textStyle: appStyle(18, AppColors.white, FontWeight.w500),
            decoration: BoxDecoration(
                color: AppColors.fillColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: AppColors.fillColor,
                ))),
        focusedPinTheme: PinTheme(
            height: 52.h,
            width: 46.w,
            textStyle: appStyle(18, AppColors.white, FontWeight.w500),
            decoration: BoxDecoration(
                color: AppColors.fillColor,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: AppColors.fillColor,
                ))),
      ),
    );
  }
}
