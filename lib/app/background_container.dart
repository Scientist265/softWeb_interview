import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
        gradient: RadialGradient(
          radius: 0.5,
          center: const Alignment(.7, -1.0),
          // begin: Alignment.topRight,
          // end: Alignment.center,
          colors: [
            // AppColors.cardGradintColorTwo.withOpacity(0.1),
            HexColor("#65524B"),
            HexColor("#2F231D"),
            AppColors.cardGradintColorfour,
          ],
        ),
      ),
      child: child,
    );
  }
}
