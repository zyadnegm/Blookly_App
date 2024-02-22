import 'package:blookly_app/Features/home/data/models/Books_Model.dart';
import 'package:blookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:blookly_app/core/errors/Faliure.dart';
import 'package:blookly_app/core/utils/Api_Service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Home_Repo_Imp implements HomeRepo{
  final Api_Service api_service;

  Home_Repo_Imp(this.api_service);
  @override
  Future<Either<Faliuer, List<Items>>> fetchBestSeller_Books() async {
   try {
     var data= await api_service.get(endpoint: "volumes?Filtering=free-ebooks&Sorting=relevance&q=subject : programming ");

     List<Items>books=[];
     for(var item in data["items"]){
       books.add(Items.fromJson(item));
     }
     return right(books);

   }catch (e){
     if(e is DioError){
       return left(ServerFailure.fromDioError(e));
     }
     return left(ServerFailure(e.toString()));

   }

  }

  @override
  Future<Either<Faliuer, List<Items>>> fetchFueatureBooks() async {
    try {
      var data= await api_service.get(endpoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=subject : programming  ");

      List<Items>books=[];
      for(var item in data["items"]){
        books.add(Items.fromJson(item));
      }
      return right(books);

    }catch (e){
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));

    }

  }

  @override
  Future<Either<Faliuer, List<Items>>> fetchBook_Details({required String category}) async {
    try {
      var data= await api_service.get(endpoint: "volumes?Filtering=free-ebooks&Sorting=relevance&q=subject : programming ");

      List<Items>books=[];
      for(var item in data["items"]){
        books.add(Items.fromJson(item));
      }
      return right(books);

    }catch (e){
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));

    }

  }
}