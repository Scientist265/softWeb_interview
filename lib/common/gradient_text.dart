import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/core/config/theme/colors.dart';

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final bool? isUnderlined;
  final FontWeight? fw;
  final double? size;

  const GradientText({
    super.key,
    required this.text,
    required this.gradient,
    this.isUnderlined = false,
    this.fw,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: TextStyle(
          color:
              Colors.white, // Color is white because the gradient overrides it
          fontSize: 14.sp,
          fontFamily: "Aeonik",
          decoration: isUnderlined == true ? TextDecoration.underline : null,
          decorationThickness: isUnderlined == true ? 1 : null,
          decorationColor:
              isUnderlined == true ? AppColors.cardGradintColorOne : null,
          fontWeight: fw ?? FontWeight.w400,
        ),
      ),
    );
  }
}
