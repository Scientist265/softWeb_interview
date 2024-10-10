import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/common/extensions.dart';
import '../../../core/config/theme/colors.dart';
import '../provider/progress_provider.dart';

class ProgressIndicatorWidget extends ConsumerWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(stepProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 3.h,
              color: currentStep >= 1 ? AppColors.white : Colors.grey[400],
            ),
          ),
          4.wt,
          Expanded(
            child: Container(
              height: 3.h,
              color: currentStep >= 2 ? AppColors.white : Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
