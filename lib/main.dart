import 'package:blookly_app/Features/Splash%20feature/splash%20view.dart';
import 'package:blookly_app/constance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primarycolor),
      home: SplashView(),
    );
  }
}

