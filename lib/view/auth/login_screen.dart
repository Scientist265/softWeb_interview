import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/app/background_container.dart';
import 'package:interview_one/app/reusable_text.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/common/password_textfield.dart';
import 'package:interview_one/common/text_field.dart';
import 'package:interview_one/view/auth/create_account_screen.dart';
import '../../common/global_button.dart';
import '../../core/config/theme/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    200.ht,
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 100.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: AppColors.fillColor.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(5.r)),
                          ),
                          7.ht,
                          Reusabletext(
                            text: "Welcome back 👋🏾",
                            style: appStyle(
                              36,
                              AppColors.white,
                              FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    50.ht,
                    GlobalTextField(
                      controller: _emailController,
                      label: "Email address",
                      hintText: "Enter Email address",
                    ),
                    5.ht,
                    PasswordTextField(
                      controller: _passwordController,
                      label: "Password",
                      hintText: "Enter Password",
                    ),
                    GestureDetector(
                      child: Reusabletext(
                        text: "Forgot password?",
                        style: appStyle(
                          14,
                          AppColors.hinttextColor,
                          FontWeight.w400,
                        ),
                      ),
                    ),
                    20.ht,
                    GlobalButton(onPressed: () {}, label: "Sign in"),
                    5.ht,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Reusabletext(
                          text: "I don't have an account,",
                          style: appStyle(
                              14, AppColors.hinttextColor, FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(CreateAccountScreen.routeName);
                          },
                          child: Reusabletext(
                            text: " Create account",
                            style: appStyle(
                                14, HexColor("#EF6C57"), FontWeight.w400),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
