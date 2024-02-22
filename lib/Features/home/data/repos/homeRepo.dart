import 'package:blookly_app/Features/home/data/models/Books_Model.dart';
import 'package:blookly_app/core/errors/Faliure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Faliuer,List<Items>>>fetchBestSeller_Books();
  Future<Either<Faliuer,List<Items>>>fetchFueatureBooks();
  Future<Either<Faliuer,List<Items>>>fetchBook_Details({required String category});

}