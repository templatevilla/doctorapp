import 'package:doctor_schedule_app/utils/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constant/app_image.dart';
import '../Home Screen/home_screen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  List<Widget> screenList = [
    const HomeScreen(),
    Container(height: 200,
       width: 200,
       color: Colors.red,
     ),
    Container(height: 200,
      width: 200,
      color: Colors.green,
    ),
    Container(height: 200,
      width: 200,
      color: Colors.blue,
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      AppImages.currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: screenList.elementAt(AppImages.currentIndex),
        ),
        bottomNavigationBar: bottomNavigationBars(),
      ),
    );
  }
  Widget bottomNavigationBars  (){
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: AppColor.appColor,
      unselectedItemColor: const Color(0xFF707070),
      selectedIconTheme: IconThemeData(
        size: 25.h,
        color: AppColor.appBannerColor,
      ),
      unselectedIconTheme: IconThemeData(
        size: 25.h,
      ),
      type: BottomNavigationBarType.fixed,
      currentIndex: AppImages.currentIndex,
      selectedItemColor: Colors.black,
      onTap: onItemTapped,
      items:  const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.bHome,)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.bBell)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.bBookMark)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.bProfile)),
          label: '',
        ),
      ],

    );
  }
}
