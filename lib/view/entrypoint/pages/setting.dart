import 'package:flutter/material.dart';
import 'package:interview_one/app/background_container.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
        child: Center(
      child: Text("SettingPage Page"),
    ));
  }
}
