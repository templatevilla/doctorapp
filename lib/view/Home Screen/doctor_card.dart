import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constant/app_color.dart';
import '../../utils/constant/app_image.dart';
import 'custom_text.dart';

class DoctorCard extends StatelessWidget {
  final String? docImage;
  final String? docName;
  final String? docReviews;

  const DoctorCard({super.key, this.docImage, this.docName, this.docReviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176.h,
      width: 190.h,
      decoration: BoxDecoration(
        color: AppColor.appContainerColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 90.h,
              width: 90.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(docImage ?? AppImages.drVec1),
            ),
            CustomText(
              text: docName ?? 'Dr. Ranjini wigham',
              textColor: AppColor.appFont,
              fontWeight: FontWeight.w500,
              fontSize: 16.h,
            ),
            CustomText(
              text: docReviews ?? '5.0 (5,279 Reviews)',
              textColor: Color(0xFF757575),
              fontWeight: FontWeight.w400,
              fontSize: 14.h,
            ),
          ],
        ),
      ),
    );
  }
}
