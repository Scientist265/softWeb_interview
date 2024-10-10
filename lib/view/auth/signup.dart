import 'package:flutter/material.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/common/extensions.dart';
import 'package:interview_one/common/password_textfield.dart';
import 'package:interview_one/common/text_field.dart';
import 'package:interview_one/core/utils/validators.dart';
import 'package:interview_one/view/auth/widgets/sign_u_p_header.dart';
import '../../app/reusable_text.dart';
import '../../core/config/theme/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const routeName = '/signup';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _passwordController = TextEditingController();
  final _referralController = TextEditingController();
  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneNoController.dispose();
    _passwordController.dispose();
    _referralController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SignUPHeader(),
              28.ht,
              Center(
                child: Reusabletext(
                    text: "Create an account",
                    style: appStyle(
                      28,
                      AppColors.deemWhiteColor,
                      FontWeight.w400,
                    )),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: GlobalTextField(
                    controller: _firstNameController,
                    validator: Validators.nameValidator,
                    keyboardType: TextInputType.name,
                    label: "First name",
                    hintText: "First name",
                  )),
                  10.wt,
                  Expanded(
                      child: GlobalTextField(
                    controller: _lastNameController,
                    validator: Validators.nameValidator,
                    keyboardType: TextInputType.name,
                    label: "Last name",
                    hintText: "Last name",
                  )),
                ],
              ),
              GlobalTextField(
                controller: _phoneNoController,
                validator: Validators.validatePhoneNumber,
                keyboardType: TextInputType.phone,
                label: "Phone number",
                hintText: "Enter phone number",
              ),
              GlobalTextField(
                controller: _emailController,
                validator: Validators.emailValidator,
                keyboardType: TextInputType.emailAddress,
                label: "Email address",
                hintText: "Enter Email address",
              ),
              PasswordTextField(
                controller: _passwordController,
                validator: Validators.passwordValidator,
                keyboardType: TextInputType.visiblePassword,
                label: "Create Password",
                hintText: "Enter Password",
              ),
              GlobalTextField(
                controller: _referralController,
                keyboardType: TextInputType.name,
                label: "Referral Code(Optional)",
                hintText: "Enter Referral Code",
              ),
            ],
          )),
    );
  }
}
