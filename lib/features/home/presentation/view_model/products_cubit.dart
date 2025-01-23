import 'package:bloc/bloc.dart';
import 'package:task_root/features/home/data/model/products_model.dart';
import 'package:task_root/features/home/presentation/view_model/products_state.dart';
import 'package:task_root/features/home/data/repos/products_repo.dart';

class ProductsCubit extends Cubit<ProductsState>{
  ProductsCubit(this.productsRepo) : super (ProductsInitial());
  final ProductsRepo productsRepo;
  List<ProductsModel> productsList = [];
  Future<void> getProducts() async{
    emit(ProductsLoading());
    var result = await productsRepo.getProducts();
    result.fold(
            (failure){
          emit(ProductsFailure(failure.errorMessage));
        },
            (products){
            productsList=products;
          emit(ProductsSuccess(products));
        });
  }
}