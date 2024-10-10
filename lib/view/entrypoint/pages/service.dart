import 'package:flutter/material.dart';
import 'package:interview_one/app/background_container.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
        child: Center(
      child: Text("Service Page"),
    ));
  }
}
