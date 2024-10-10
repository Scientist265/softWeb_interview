import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/app_style.dart';
import '../app/reusable_text.dart';
import '../core/config/theme/colors.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text, this.onTap});
  final String text;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
          child: Reusabletext(
              text: text,
              style: appStyle(
                16,
                AppColors.white,
                FontWeight.w500,
              )),
        ),
        InkWell(
          onTap: () {},
          child: Reusabletext(
              text: "View all",
              style:
                  appStyle(14, AppColors.cardGradintColorTwo, FontWeight.w500)),
        )
      ],
    );
  }
}
