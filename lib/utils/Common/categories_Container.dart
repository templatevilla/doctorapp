

import 'package:doctor_schedule_app/utils/constant/app_color.dart';
import 'package:doctor_schedule_app/utils/constant/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesContainer extends StatefulWidget {
  final String? image;

  final String? type;
  final bool   isPressed ;

  const CategoriesContainer({Key? key, this.image,   required this.isPressed, this.type, }) : super(key: key);

  @override
  State<CategoriesContainer> createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {


  @override
  Widget build(BuildContext context) {

    return Container(

      height: 48.h,
      width: 124.h,
      decoration: BoxDecoration(
        color:widget.isPressed ?  const Color(0x1F6B969D): AppColor.appContainerColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
            color: widget.isPressed?  AppColor.appBannerColor: const Color(0xFFF5F5F5),),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.h,vertical: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                Image.asset(widget.image??AppImages.dentIcon,height: 24.h,width: 24.h,),
            Text(widget.type??'Dentist',style: TextStyle(
              color: widget.isPressed?AppColor.appBannerColor:AppColor.appFont,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
            ),)
          ],
        ),
      )
    );
  }
  getCustomText(
      String text,
      Color color,
      int maxLine,
      TextAlign textAlign,
      FontWeight fontWeight,
      double textSize,
      ) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: textSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
