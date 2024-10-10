import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/config/theme/colors.dart';

class PasswordTextField extends StatefulWidget {
  final String? label;
  final TextStyle? labelStyle;
  final TextEditingController controller;
  final EdgeInsets? padding;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? borderRadius;
  final EdgeInsets? margin;
  final int? maxLines;
  final String? Function(String?)? validator;
  final Function(String?)? onchanged;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final FocusNode? focusNode;

  const PasswordTextField({
    super.key,
    this.label,
    this.labelStyle,
    required this.controller,
    this.padding,
    this.hintText,
    this.hintTextStyle,
    this.keyboardType,
    this.obscureText = false,
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
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
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
          widget.label == null
              ? SizedBox(
                  height: 0.h,
                  // child: Text("data"),
                )
              : SizedBox(
                  height: 8.h,
                ),
          Container(
            color: AppColors.fillColor.withOpacity(0.5),
            child: TextFormField(
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              obscureText: !obscureText,
              maxLines: widget.maxLines ?? 1,
              validator: widget.validator,
              focusNode: widget.focusNode,
              onChanged: widget.onchanged,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: widget.padding ??
                    EdgeInsets.symmetric(
                      vertical: 8.h,
                      horizontal: 12.w,
                    ),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.hinttextColor,
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(widget.borderRadius ?? 6.r),
                  borderSide: BorderSide(
                    color: AppColors.hinttextColor,
                    width: 0.3.w,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(widget.borderRadius ?? 6.r),
                  borderSide: BorderSide(
                    color: widget.borderColor ?? AppColors.hinttextColor,
                    width: 1.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(widget.borderRadius ?? 6.r),
                  borderSide: BorderSide(
                    color: widget.focusedBorderColor ?? AppColors.hinttextColor,
                    width: 1.w,
                  ),
                ),
                prefixIcon: widget.prefixIcon,
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: !obscureText
                      ? Icon(
                          Icons.visibility_off,
                          color: AppColors.hinttextColor,
                        )
                      : Icon(
                          Icons.visibility,
                          color: AppColors.white,
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
