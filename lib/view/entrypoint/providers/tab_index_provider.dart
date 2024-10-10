import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabIndexNotifier extends StateNotifier<int> {
  TabIndexNotifier() : super(0); // Initial tab index is 0

  int get tabIndex => state;

  void setTabIndex(int newValue) {
    state = newValue;
  }
}
final tabIndexProvider = StateNotifierProvider<TabIndexNotifier, int>((ref) {
  return TabIndexNotifier();
});
