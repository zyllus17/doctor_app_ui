import 'package:device_preview/device_preview.dart';
import 'package:doctor_app_ui/constants/constants.dart';
import 'package:doctor_app_ui/screens/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    // const MyApp()
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 823),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doctor App UI',
        theme: AppTheme.appTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
