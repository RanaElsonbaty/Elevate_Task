import 'package:dartz/dartz.dart';
import 'package:task_root/core/errors/failures.dart';
import 'package:task_root/features/home/data/model/products_model.dart';

abstract class ProductsRepo{
  Future<Either<Failure,List<ProductsModel>>> getProducts();
}