import 'package:flutter/material.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/app/reusable_text.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/core/config/theme/colors.dart';

class TopTranHisTile extends StatelessWidget {
  const TopTranHisTile({
    super.key,
    required this.icon,
    required this.label,
  });
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: AppColors.hinttextColor,
        ),
        6.ht,
        Reusabletext(
          text: label,
          style: appStyle(
            14,
            AppColors.black,
            FontWeight.w500,
          ),
        )
      ],
    );
  }
}
