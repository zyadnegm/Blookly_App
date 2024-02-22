import 'package:blookly_app/Features/Splash%20feature/splash%20view.dart';
import 'package:blookly_app/Features/home/data/repos/Home_repo_imp.dart';
import 'package:blookly_app/Features/home/presentation/manager/Book_Detail_cubit/BookDetail_cubit.dart';
import 'package:blookly_app/Features/home/presentation/views/Book_Details_View.dart';
import 'package:blookly_app/Features/search%20feature/presentaion/views/Search_View.dart';
import 'package:blookly_app/core/utils/Api_Service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/data/models/Books_Model.dart';
import '../../Features/home/presentation/views/homeView.dart';

abstract class App_Router{
  static const khomeViewPath='/homeview';
  static const kBookDetailsPath='/BookDetail';
  static const ksearchView='/search';



  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsPath,
        builder: (context, state) => BlocProvider(
          create: (context) => BookDetail_Cubit(Home_Repo_Imp(Api_Service(Dio()))),
            child:  Book_DeatailsView(
              items: state.extra as Items,
            )),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const Search_View(),
      ),


    ]
  );

}