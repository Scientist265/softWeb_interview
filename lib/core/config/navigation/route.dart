import 'package:flutter/cupertino.dart';
import 'package:interview_one/view/auth/create_account_screen.dart';
import 'package:interview_one/view/auth/verify_otp_page.dart';
import 'package:interview_one/view/entrypoint/entry.dart';

import '../../../common/error_screen.dart';
import '../../../view/auth/login_screen.dart';
import '../../../view/auth/signup.dart';

class Routes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return _cupertinoRoute(const LoginScreen());
      case CreateAccountScreen.routeName:
        return _cupertinoRoute(const CreateAccountScreen());
        case EntryPoint.routeName:
        return _cupertinoRoute( EntryPoint());
      case VerifyOtpPage.routeName:
        final email = settings.arguments as String;
        return _cupertinoRoute(VerifyOtpPage(
          email: email,
        ));

      default:
        return _cupertinoRoute(
          ErrorScreen(
            error: 'Wrong Route provided ${settings.name}',
          ),
        );
    }
  }

  static Route _cupertinoRoute(Widget view) => CupertinoPageRoute(
        builder: (_) => view,
      );

  Routes._();
}
