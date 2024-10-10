import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/app/reusable_text.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/common/heading.dart';
import 'package:interview_one/common/sizing.dart';
import 'package:interview_one/view/entrypoint/models/quick_actions.dart';
import 'package:interview_one/view/entrypoint/pages/new_update_widget.dart';
import 'package:interview_one/view/entrypoint/pages/quick_action_card.dart';

import '../../../app/background_container.dart';
import '../../../common/app_assets.dart';
import '../../../core/config/theme/colors.dart';
import '../user_card_info_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const UserCardInfoTile(),
          20.ht,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Reusabletext(
                    text: "Quick Actions",
                    style: appStyle(18, AppColors.white, FontWeight.w500)),
                9.ht,
                Wrap(
                  spacing: 12, // Space between items horizontally
                  runSpacing: 12, // Space between rows vertically
                  children: quickActions.map((quick) {
                    return QuickActionCard(quick: quick);
                  }).toList(),
                ),
                20.ht,
                const Heading(text: "News & Update"),
                const NewUpdateWidget()
              ],
            ),
          )
        ],
      ),
    ));
  }
}
