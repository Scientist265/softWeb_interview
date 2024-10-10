import 'package:flutter_riverpod/flutter_riverpod.dart';

class StepNotifier extends StateNotifier<int> {
  StepNotifier() : super(1);

  void nextStep() {
    if (state < 2) {
      state++;
    }
  }

  void previousStep() {
    if (state > 1) {
      state--;
    }
  }
}

// StepNotifier Provider
final stepProvider = StateNotifierProvider<StepNotifier, int>((ref) {
  return StepNotifier();
});
