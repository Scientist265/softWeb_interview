import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/core/config/theme/colors.dart';
import 'package:interview_one/view/entrypoint/entry.dart';
import 'package:interview_one/view/entrypoint/widgets/card_header.dart';
import 'package:interview_one/view/entrypoint/widgets/user_wallet_card.dart';
import 'package:interview_one/view/entrypoint/widgets/wallet_bottom_button_widget.dart';

class UserCardInfoTile extends StatelessWidget {
  const UserCardInfoTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          )),
      child: Column(
        children: [
          const CardHeader(),
          20.ht,
          const UserWalletCard(),
          20.ht,
          const WalletBottomButtonWidget(),
          10.ht,
          const DragHandleWidget()
        ],
      ),
    );
  }
}
