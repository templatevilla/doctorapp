import 'package:doctor_schedule_app/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,

        builder: (context, child) {
          // ThemeMode themeMode = ThemeMode.system;

          return  MaterialApp(

            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'CircularStd',
            ),
            title: 'Doctor App',

            // theme: mainTheme,
            // darkTheme: ThemeData.dark(),
            // themeMode: themeMode,

            home: SplashScreen(),
          );
        }

    );
  }
}


