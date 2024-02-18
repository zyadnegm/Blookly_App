import 'package:blookly_app/constance.dart';
import 'package:blookly_app/core/utils/App_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: App_Router.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primarycolor,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),

    );
  }
}

