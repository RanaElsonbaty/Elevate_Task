import 'dart:developer';
import 'package:dio/dio.dart';

class ApiService{
  final _baseUrl= 'https://fakestoreapi.com/';
  final Dio _dio;

  ApiService(this._dio);

  Future<dynamic> get({required String endpoint}) async{
    log("Endpoint: $endpoint");
    var response = await _dio.get('$_baseUrl$endpoint');
    log("Response: ${response.statusCode}, Data: ${response.data}");
    return response.data;
  }
}