import 'package:flutter/material.dart';

class QuickActions {
  final String actionLabel;
  final String iconPath;
  QuickActions({
    required this.actionLabel,
    required this.iconPath,
  });
}

final quickActions = [
  QuickActions(actionLabel: "Data", iconPath: "assets/images/data.png",),
  QuickActions(actionLabel: "Airtime", iconPath: "assets/images/airtime.png",),
  QuickActions(actionLabel: "Showmax", iconPath: "assets/images/showmax.png",),
  QuickActions(actionLabel: "GiftCards", iconPath: "assets/images/giftcard.png",),
  QuickActions(actionLabel: "Betting", iconPath: "assets/images/betting.png",),
  QuickActions(actionLabel: "Electricity", iconPath: "assets/images/electricity.png",),
  QuickActions(actionLabel: "TV/Cable", iconPath: "assets/images/tv.png",),
  QuickActions(actionLabel: "E-Pin", iconPath: "assets/images/epin.png",),
];

