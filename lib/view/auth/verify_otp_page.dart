import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/view/auth/widgets/otp_widget.dart';
import '../../app/app_style.dart';
import '../../app/reusable_text.dart';
import '../../core/config/theme/colors.dart';
import 'provider/progress_provider.dart';

class VerifyOtpPage extends StatefulWidget {
  const VerifyOtpPage({super.key, this.email});
  static const routeName = '/verify-otp';
  final String? email;

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  final _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer(builder: (context, ref, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                ref.read(stepProvider.notifier).previousStep();
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
                    style:
                        appStyle(16, AppColors.hinttextColor, FontWeight.w500),
                  ),
                ],
              ),
            ),
            50.ht,
            Reusabletext(
              text: "Verify your email",
              style: appStyle(29, AppColors.white, FontWeight.w400),
            ),
            Reusabletext(
              text: "Please enter the OTP sent to",
              style: appStyle(14, AppColors.hinttextColor, FontWeight.w400),
            ),
            //TODO:
            Reusabletext(
              text: widget.email ?? "tolu.ab19@gmail.com",
              style: appStyle(
                14,
                AppColors.white,
                FontWeight.w600,
              ),
            ),
            5.ht,
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: OtpWidget(controller: _otpController),
            )
          ],
        );
      }),
    );
  }
}
