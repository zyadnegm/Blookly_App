import 'package:blookly_app/Features/home/data/repos/Home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'Api_Service.dart';

final getIt = GetIt.instance;

void setup(){
getIt.registerLazySingleton(() => Home_Repo_Imp(Api_Service(Dio())));}