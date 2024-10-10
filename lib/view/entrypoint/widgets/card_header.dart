import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/app/reusable_text.dart';
import 'package:interview_one/common/app_icons.dart';
import 'package:interview_one/core/config/theme/colors.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 44.h,
          width: 44.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
              border: Border.all(color: AppColors.hinttextColor, width: 1)),
          child: Icon(
            AppIcons.profile,
            color: AppColors.black,
          ),
        ),
        Reusabletext(
            text: "Welcome, Sam 👋🏾",
            style: appStyle(18, AppColors.black, FontWeight.w400)),
        Container(
          height: 44.h,
          width: 44.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
              border: Border.all(color: AppColors.hinttextColor, width: 1)),
          child: Icon(
            AppIcons.notification,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
