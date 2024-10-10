import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/app/reusable_text.dart';
import 'package:interview_one/common/sizing.dart';

import '../core/config/theme/colors.dart';
import '../core/utils/gradient_text.dart';

class GlobalButton extends StatefulWidget {
  const GlobalButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.color,
    this.height = 50,
    this.child,
    this.btnColor,
    this.labelColor,
  });

  final VoidCallback? onPressed;
  final String label;
  final Color? btnColor, color, labelColor;
  final double height;
  final Widget? child;

  @override
  State<GlobalButton> createState() => _GlobalButtonState();
}

class _GlobalButtonState extends State<GlobalButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        width: width,
        margin: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(
          gradient: buildGradient()
,          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
            child: Reusabletext(
                text: widget.label,
                style: appStyle(16, AppColors.white, FontWeight.w400))),
      ),
    );
  }
}

