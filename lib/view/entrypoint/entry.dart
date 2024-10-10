import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/app/app_style.dart';
import 'package:interview_one/app/background_container.dart';
import 'package:interview_one/core/config/theme/colors.dart';
import 'package:interview_one/core/utils/gradient_text.dart';
import 'package:interview_one/view/entrypoint/pages/referral.dart';
import 'package:interview_one/view/entrypoint/pages/service.dart';
import 'package:interview_one/view/entrypoint/user_card_info_tile.dart';

import '../../common/app_icons.dart';
import 'pages/home_page.dart';
import 'pages/setting.dart';
import 'pages/statistic.dart';
import 'providers/tab_index_provider.dart';

class EntryPoint extends ConsumerWidget {
  EntryPoint({super.key});
  static const routeName = '/entry-point';
  List<Widget> pages = [
    const HomePage(),
    const ServicePage(),
    const StatisticPage(),
    const ReferralPage(),
    const SettingPage()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = ref.watch(tabIndexProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Stack(
          children: [
            pages[tabIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: AppColors.black),
                child: BottomNavigationBar(
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  unselectedItemColor: AppColors.fillColor,
                  selectedItemColor: AppColors.white,
                  unselectedIconTheme:
                      IconThemeData(color: AppColors.fillColor),
                  selectedIconTheme: IconThemeData(color: AppColors.white),
                  selectedLabelStyle:
                      appStyle(10, AppColors.hinttextColor, FontWeight.w400),
                  unselectedLabelStyle:
                      appStyle(10, AppColors.hinttextColor, FontWeight.w400),
                  onTap: (index) {
                    ref.read(tabIndexProvider.notifier).setTabIndex(index);
                  },
                  currentIndex: ref.read(tabIndexProvider),
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(AppIcons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(AppIcons.menu), label: 'Services'),
                    BottomNavigationBarItem(
                        icon: Icon(AppIcons.statistics), label: 'Statistics'),
                    BottomNavigationBarItem(
                        icon: Icon(AppIcons.twoPersons), label: 'Referrals'),
                    BottomNavigationBarItem(
                        icon: Icon(AppIcons.settings), label: 'Settings'),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 60.h,
              right: 15.w,
              child: Container(
                height: 44.h,
                width: 44.w,
                decoration: BoxDecoration(
                  gradient: buildGradient(),
                  shape: BoxShape.circle,
                ),
                child: const Icon(AppIcons.message),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DragHandleWidget extends StatelessWidget {
  const DragHandleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      width: 50.w,
      height: 4.h,
      decoration: BoxDecoration(
          color: AppColors.hinttextColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10.r)),
    );
  }
}
