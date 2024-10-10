import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../config/theme/colors.dart';

final Shader linearGradient = LinearGradient(
  colors: <HexColor>[
    AppColors.cardGradintColorTwo,
    AppColors.cardGradintColorOne
  ],
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

LinearGradient buildGradient() {
  return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomRight,
      colors: [
        AppColors.cardGradintColorTwo,
        AppColors.cardGradintColorOne,
      ]);
}
