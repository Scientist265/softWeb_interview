import 'package:flutter/material.dart';
import '../common/sizing.dart';
import '../core/config/theme/colors.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.9,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.center,
          colors: [
            AppColors.cardGradintColorTwo.withOpacity(0.1),
            AppColors.black,
            AppColors.black,
            AppColors.cardGradintColorfour,
          ],
        ),
      ),
      child: child,
    );
  }
}
