import 'package:dio/dio.dart';

 class Api_Service{
  final baseUrl="https://www.googleapis.com/books/v1/";
  final Dio dio;
  Api_Service(this.dio);


   Future<Map<String,dynamic>> get({required String endpoint}) async {
    var response = await dio.get("$baseUrl$endpoint");
    return response.data;

  }
}