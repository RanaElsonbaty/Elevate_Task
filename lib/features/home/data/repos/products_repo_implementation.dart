import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_root/core/errors/failures.dart';
import 'package:task_root/core/helper/api_service.dart';
import 'package:task_root/core/utils/end_points.dart';
import 'package:task_root/features/home/data/model/products_model.dart';
import 'package:task_root/features/home/data/repos/products_repo.dart';

class ProductsRepoImplementation implements ProductsRepo {
  final ApiService apiService;

  ProductsRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<ProductsModel>>> getProducts() async {
    try {
      var data = await apiService.get(endpoint: EndPoints.products);

      if (data is List) {
        List<dynamic> productsFromApi = data;
        List<ProductsModel> products = [];
        for (var product in productsFromApi) {
          products.add(ProductsModel.fromJson(product));
        }
        return right(products);
      }else{
        throw Exception("Expected To be a list");
      }
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
