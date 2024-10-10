import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/config/theme/colors.dart';
import '../provider/progress_provider.dart';

class StepTextWidget extends ConsumerWidget {
  const StepTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(stepProvider);

    return Text(
      currentStep == 1 ? 'Account information' : 'Email verification',
      style: TextStyle(color: AppColors.white),
    );
  }
}
