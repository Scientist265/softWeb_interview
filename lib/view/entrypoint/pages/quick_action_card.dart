import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/app/reusable_text.dart';
import 'package:interview_one/core/config/theme/colors.dart';
import 'package:interview_one/view/entrypoint/models/quick_actions.dart';

class QuickActionCard extends StatelessWidget {
  const QuickActionCard({
    super.key,
    required this.quick,
  });

  final QuickActions quick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 75.h,
        width: 78.w,
        decoration: BoxDecoration(
            color: AppColors.fillColor.withOpacity(0.4),
            borderRadius: BorderRadius.circular(5.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.h,
              width: 30.w,
              child: Image.asset(quick.iconPath),
            ),
            Reusabletext(
                text: quick.actionLabel,
                style: appStyle(12, AppColors.white, FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
