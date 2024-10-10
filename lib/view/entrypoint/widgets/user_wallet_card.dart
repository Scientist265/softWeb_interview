import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/app/reusable_text.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/core/config/theme/colors.dart';
import 'package:interview_one/core/utils/gradient_text.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UserWalletCard extends StatefulWidget {
  const UserWalletCard({
    super.key,
  });

  @override
  State<UserWalletCard> createState() => _UserWalletCardState();
}

class _UserWalletCardState extends State<UserWalletCard> {
  bool obscureText = false;
  var accountNumber = "8192017482";
  void _copyText(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    Fluttertoast.showToast(
        msg: "account copied",
        backgroundColor: AppColors.cardGradintColorOne,
        fontSize: 18,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
      decoration: BoxDecoration(
          gradient: buildGradient(),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0.5,
                blurRadius: 0.5,
                color: AppColors.cardGradintColorTwo),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Reusabletext(
                  text: "WALLET BALANCE",
                  style: appStyle(10, AppColors.white, FontWeight.w400)),
              2.ht,
              Row(
                children: [
                  Reusabletext(
                      text: obscureText == true ? "NGN 50,000" : "*****",
                      style: appStyle(16, AppColors.white, FontWeight.w700)),
                  5.wt,
                  InkWell(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: !obscureText
                        ? Icon(
                            Icons.visibility_off,
                            color: AppColors.hinttextColor,
                          )
                        : Icon(
                            Icons.visibility,
                            color: AppColors.white,
                          ),
                  ),
                ],
              ),
              8.ht,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(40.r),
                ),
                child: RichText(
                    text: TextSpan(
                        text: "Cashback ",
                        style: appStyle(10, AppColors.black, FontWeight.w400),
                        children: [
                      TextSpan(
                          text: "N341.21",
                          style:
                              TextStyle(color: AppColors.cardGradintColorTwo))
                    ])),
              )
            ],
          ),
          Container(
              width: 3.w, height: 100, color: AppColors.cardGradintColorTwo),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r),
                )),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Reusabletext(
                  text: "MONIEPOINT",
                  style: appStyle(10, AppColors.white, FontWeight.w400)),
              2.ht,
              Row(
                children: [
                  Reusabletext(
                      text: accountNumber,
                      style: appStyle(16, AppColors.white, FontWeight.w700)),
                  10.wt,
                  GestureDetector(
                    onTap: () {
                      _copyText(context, accountNumber);
                    },
                    child: Icon(
                      Icons.copy,
                      size: 20,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              Text(
                "Deposit Fee: N20",
                style: TextStyle(
                  color: AppColors.white,
                  fontFamily: "Aeonik",
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.white,
                  decorationThickness: 1.5,
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
