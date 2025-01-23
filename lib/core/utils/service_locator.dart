import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_root/features/home/data/repos/products_repo_implementation.dart';
import '../helper/api_service.dart';

final getIt = GetIt.instance;



void setupServiceLocator()
{
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<ProductsRepoImplementation>(
      ProductsRepoImplementation(
          getIt.get<ApiService>()
      ));
}