import 'package:equatable/equatable.dart';
import 'package:task_root/features/home/data/model/products_model.dart';

abstract class ProductsState extends Equatable{
  const ProductsState();
  @override
  List<Object?> get props => [];
}

class ProductsInitial extends ProductsState{}

class ProductsLoading extends ProductsState{}

class ProductsFailure extends ProductsState{
  final String errorMessage;

  const ProductsFailure(this.errorMessage);
}

class ProductsSuccess extends ProductsState{
  final List<ProductsModel> products;

  const ProductsSuccess(this.products) ;
}