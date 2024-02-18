import 'package:blookly_app/Features/Splash%20feature/splash%20view.dart';
import 'package:blookly_app/Features/home/presentation/views/Book_Details_View.dart';
import 'package:blookly_app/Features/search%20feature/presentaion/views/Search_View.dart';
import 'package:go_router/go_router.dart';

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
        builder: (context, state) => const Book_DeatailsView(),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const Search_View(),
      ),


    ]
  );

}