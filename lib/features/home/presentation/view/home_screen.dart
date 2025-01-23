import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_root/core/widgets/custom_loading_widget.dart';
import 'package:task_root/features/home/presentation/view_model/products_cubit.dart';
import 'package:task_root/features/home/presentation/view_model/products_state.dart';
import 'package:task_root/features/home/presentation/view/widgets/products_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ProductsCubit>().getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProductsCubit,ProductsState>(
        listener: (BuildContext context, state) {
          if (state is ProductsFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage)),
            );
          }
        },
        builder: (BuildContext context, state) {
          return state is ProductsLoading?
            CustomLoadingWidget()
          : state is ProductsSuccess?
            GridView.builder(
              itemCount: state.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
              ),
              itemBuilder: (c,index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                    child: ProductsWidget(productsModel: state.products[index], index: index,)
                );
              } )
          : SizedBox();
        },
      ),
    );
  }
}
