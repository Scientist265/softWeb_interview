import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/app/background_container.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/core/config/theme/colors.dart';
import 'package:interview_one/view/auth/signup.dart';
import 'package:interview_one/view/auth/verify_otp_page.dart';
import 'package:interview_one/view/entrypoint/entry.dart';
import '../../common/global_button.dart';
import 'provider/progress_provider.dart';
import 'widgets/progress_widget.dart';
import 'widgets/step_widget.dart';

class CreateAccountScreen extends ConsumerWidget {
  const CreateAccountScreen({super.key});
  static const routeName = '/create-account';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(stepProvider);

    return SafeArea(
      child: Scaffold(
        // backgroundColor: AppColors.black,
        body: BackgroundContainer(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: currentStep == 1
                      ? const SignUpPage()
                      : const VerifyOtpPage(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: GlobalButton(
                    onPressed: () {
                      ref.read(stepProvider.notifier).nextStep();
                      if (currentStep != 1) {
                        Navigator.of(context)
                            .pushReplacementNamed(EntryPoint.routeName);
                      }
                    },
                    label: currentStep == 1 ? "Next" : "Verify Email"),
              ),
              20.ht,
              // Extracted Progress Bar and Step Text Widget
              const ProgressIndicatorWidget(),
              10.ht,
              const StepTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
