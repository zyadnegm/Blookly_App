import 'package:blookly_app/Features/home/data/repos/Home_repo_imp.dart';
import 'package:blookly_app/Features/home/presentation/manager/BestSeller_Books_Cubit/BestSeller_Cubit.dart';
import 'package:blookly_app/Features/home/presentation/manager/Books_Cubit/Books_Cubit.dart';
import 'package:blookly_app/constance.dart';
import 'package:blookly_app/core/utils/Api_Service.dart';
import 'package:blookly_app/core/utils/App_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BestSeller_Cubit(
            Home_Repo_Imp(Api_Service(Dio()))..fetchBestSeller_Books()

        )),

        BlocProvider(create: (context) => Books_Cubit(
          Home_Repo_Imp(Api_Service(Dio()))
        )..fetchfeatureBooks()),




      ],
      child: MaterialApp.router(
        routerConfig: App_Router.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primarycolor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),

      ),
    );
  }
}

