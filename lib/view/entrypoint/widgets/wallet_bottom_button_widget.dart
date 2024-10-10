import 'package:flutter/material.dart';
import 'package:interview_one/common/app_icons.dart';
import 'package:interview_one/core/config/theme/colors.dart';
import 'package:interview_one/view/entrypoint/widgets/top_tran_his_tile.dart';

class WalletBottomButtonWidget extends StatelessWidget {
  const WalletBottomButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const TopTranHisTile(
            icon: AppIcons.add,
            label: 'Top up',
          ),
          Text(
            '|',
            style: TextStyle(color: AppColors.hinttextColor),
          ),
          const TopTranHisTile(
            icon: AppIcons.send2,
            label: 'Transfer',
          ),
          Text(
            '|',
            style: TextStyle(color: AppColors.hinttextColor),
          ),
          const TopTranHisTile(
            icon: AppIcons.clock,
            label: 'History',
          ),
        ],
      ),
    );
  }
}
