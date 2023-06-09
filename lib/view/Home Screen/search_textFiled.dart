import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constant/app_color.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        // enabled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.h),
            borderSide: const BorderSide(
              color: Colors.white,
            )
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.h),
            borderSide:  BorderSide(
              color: AppColor.appContainerColor,
            )
        ),
        prefixIcon:  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.h,vertical: 15.h),
            child:Image.asset('assets/images/Search.png',)
        ),
        constraints:  BoxConstraints(
          maxHeight: 56.h,
          minHeight: 56.h,
        ),
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        hintText: "Search doctor",
        fillColor:  const Color(0xFFF5F5F5),
      ),
    );
  }
}

