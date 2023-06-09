import 'package:doctor_schedule_app/utils/Common/app_space.dart';
import 'package:doctor_schedule_app/utils/constant/app_color.dart';
import 'package:doctor_schedule_app/utils/constant/app_image.dart';
import 'package:doctor_schedule_app/utils/constant/app_string.dart';
import 'package:doctor_schedule_app/view/Home%20Screen/custom_text.dart';
import 'package:doctor_schedule_app/view/Home%20Screen/doctor_card.dart';
import 'package:doctor_schedule_app/view/Home%20Screen/search_textFiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/Common/categories_Container.dart';
import 'doc_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> icon =[
    AppImages.dentIcon,
    AppImages.allergistIcon,
    AppImages.surgeonIcon,
  ];
  List<String> type = [
    "Dentist",
    'Allergist',
    'Surgeon',
  ];
  int sizeIndex = 0;
  bool productPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appColor,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            AppSpace(
              height: 16.h,
            ),
            welComeUserText(),
            AppSpace(
              height: 24.h,
            ),
            searchTextField(),
            AppSpace(
              height: 24.h,
            ),
            bannerImage(),
            AppSpace(
              height: 10.h,
            ),
            categoriesOptions(),
            AppSpace(
              height: 30.h,
            ),
            seheduleViewText(),
            AppSpace(
              height: 10.h,
            ),
            doctorList(),
          ],
        ),
      ),
    );
  }

  Widget doctorList(){
    return SizedBox(
      height: 400.h,
      child: GridView.builder(scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 20.h,),

        shrinkWrap: false,
        primary: true,
        physics: const BouncingScrollPhysics(),
        // padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          // maxCrossAxisExtent: 110.h,
          crossAxisCount: 2,
          mainAxisExtent: 176.h,

          crossAxisSpacing: 20.h,
          mainAxisSpacing: 20.h,



        ), itemBuilder: (context, index) => DoctorCard(
          docImage: docModel[index].docImage,
          docName: docModel[index].docName,
          docReviews: docModel[index].docReview,
        ),
        itemCount: docModel.length,

      ),
    );
  }
  Widget seheduleViewText(){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: 'Doctor’s schedule',
            fontSize: 20.h,

          ),
          CustomText(
            text: 'View all',
            fontSize: 14.h,
            fontWeight: FontWeight.w400,
            textColor: const Color(0xFF707070),

          ),
        ],
      ),
    );
  }
  Widget categoriesOptions(){
    return SizedBox(
      height: 48.h,
      // width: 400.h,
      child: ListView.separated(

          padding: EdgeInsets.symmetric(horizontal: 20.h),

          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  sizeIndex = index;
                  productPressed = !productPressed;
                });
              },
              child: CategoriesContainer(
                image: icon[index],
                type: type[index],
                isPressed: sizeIndex == index,
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width:  14.h,
          ),
          itemCount: type.length),
    );
  }
  Widget bannerImage(){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:16.h),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 160.h,
            // width: 396.h,
            decoration: BoxDecoration(
              color: AppColor.appBannerColor,
              borderRadius: BorderRadius.circular(16.r),
            ),

          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.h,vertical: 26.h),
            child: SizedBox(
              height: 120.h,
              width: 260.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    text: AppText.bannerText,
                    textColor: AppColor.appColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    textAlign: TextAlign.start,
                  ),
                  Container(
                    height: 32.h,
                    width: 119.h,
                    decoration: BoxDecoration(
                      color: AppColor.appColor,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'Find nearby',
                        textColor: AppColor.appBannerColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top:-15.h,
              left: 260.h,
              child: Image.asset(AppImages.homeVec,height: 175.h,)),
        ],
      ),
    );
  }
  Widget searchTextField (){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 56.h,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(40.r),

                boxShadow:  [
                  BoxShadow(
                      color: const Color(0xFF1C1C1C).withOpacity(0.07),
                      blurRadius: 30,
                      offset: const Offset(0,6)
                  ),
                ],

              ),
              child:const SearchTextField(),
            ),
          ),

          SizedBox(width: 20.h,),

          Container(
            height: 56.h,
            width: 56.w,
            decoration: BoxDecoration(
                color: AppColor.appContainerColor,
                boxShadow:  [
                  BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.07),
                      blurRadius: 30,
                      offset: const Offset(0,6)
                  )
                ],
                borderRadius: BorderRadius.circular(16.r)
            ),
            child: Padding(
              padding:  EdgeInsets.all(15.h),
              child:Image.asset('assets/images/filter.png'),
            ),
          ),

        ],
      ),
    );
  }
  Widget welComeUserText(){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.h),
      child: RichText(
        text: TextSpan(
          text: 'Hello, ',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.sp,
            fontFamily: 'CircularStd',
            fontWeight: FontWeight.w400,
          ),
          children:  <TextSpan>[
            TextSpan(text: '\nJohn abram',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColor.appFont,
                  fontSize: 32.sp,
                )),

          ],
        ),
      ),
    );
  }
}
