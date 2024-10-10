import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/core/config/theme/colors.dart';

class GlobalTextField extends StatefulWidget {
  final String? label;
  final TextStyle? labelStyle;
  final TextEditingController controller;
  final EdgeInsets? padding;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? borderRadius;
  final EdgeInsets? margin;
  final int? maxLines;
  final String? Function(String?)? validator;
  final Function(String?)? onchanged, onSubmitted;
  final Color? borderColor, focusedBorderColor, fillColor;

  final FocusNode? focusNode;

  const GlobalTextField({
    super.key,
    this.label,
    this.labelStyle,
    required this.controller,
    this.padding,
    this.hintText,
    this.hintTextStyle,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.margin,
    this.borderRadius,
    this.maxLines,
    this.validator,
    this.borderColor,
    this.focusedBorderColor,
    this.focusNode,
    this.onchanged,
    this.fillColor,
    this.onSubmitted,
  });

  @override
  State<GlobalTextField> createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? EdgeInsets.only(bottom: 22.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.label ?? "",
            style: widget.labelStyle ??
                TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
          ),
          widget.label == null ? 0.ht : 8.ht,
          Container(
            decoration: BoxDecoration(
              color: AppColors.fillColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
            ),
            child: TextFormField(
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              maxLines: widget.maxLines ?? 1,
              validator: widget.validator,
              focusNode: widget.focusNode,
              onChanged: widget.onchanged,
              enabled: true,
              onFieldSubmitted: widget.onSubmitted,
              textInputAction: TextInputAction.newline,
              style: appStyle(16, AppColors.white, FontWeight.w500),
              decoration: InputDecoration(
                  contentPadding: widget.padding ??
                      EdgeInsets.symmetric(
                        vertical: 8.h,
                        horizontal: 12.w,
                      ),
                  fillColor: AppColors.fillColor.withOpacity(0.8),
                  hintText: widget.hintText,
                  hintStyle: appStyle(
                    16,
                    AppColors.hinttextColor,
                    FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 8.r),
                    borderSide: BorderSide(
                      color: AppColors.fillColor.withOpacity(0.8),
                      width: 0.3.w,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 8.r),
                    borderSide: BorderSide(
                      color: widget.borderColor ??
                          AppColors.fillColor.withOpacity(0.8),
                      width: 1.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 8.r),
                    borderSide: BorderSide(
                      color: widget.focusedBorderColor ??
                          AppColors.fillColor.withOpacity(0.8),
                      width: 1.w,
                    ),
                  ),
                  prefixIcon: widget.prefixIcon,
                  suffixIcon: widget.suffixIcon ?? const SizedBox.shrink()),
            ),
          ),
        ],
      ),
    );
  }
}
