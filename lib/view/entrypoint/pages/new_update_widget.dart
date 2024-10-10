import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/common/app_assets.dart';
import 'package:interview_one/common/sizing.dart';

class NewUpdateWidget extends StatelessWidget {
  const NewUpdateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130.h,
        padding: EdgeInsets.only(left: 12.w, top: 7.h),
        margin: EdgeInsets.only(right: 12.h),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(images.length, (i) {
            final image = images[i];
            return Padding(
              padding: EdgeInsets.only(right: 10.w, bottom: 10.h),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: SizedBox(
                  height: 120.h,
                  width: width * .8,
                  child: Image.network(
                    image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            );
          }),
        ));
  }
}
