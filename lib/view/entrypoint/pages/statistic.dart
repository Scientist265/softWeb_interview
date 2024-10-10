import 'package:flutter/material.dart';
import 'package:interview_one/app/background_container.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
        child: Center(
      child: Text("Statistic Page"),
    ));
  }
}
