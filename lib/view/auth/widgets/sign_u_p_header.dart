import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview_one/app/app.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/app/reusable_text.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/common/gradient_text.dart';
import 'package:interview_one/core/config/theme/colors.dart';
import 'package:interview_one/core/utils/gradient_text.dart';
import 'package:interview_one/view/auth/login_screen.dart';

class SignUPHeader extends StatelessWidget {
  const SignUPHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: AppColors.hinttextColor,
              ),
              10.wt,
              Reusabletext(
                  text: "Back",
                  style: appStyle(16, AppColors.hinttextColor, FontWeight.w500))
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(LoginScreen.routeName);
          },
          child: GradientText(
            isUnderlined: true,
            text: "Sign in instead",
            gradient: buildGradient(),
          ),
        ),
      ],
    );
  }
}
