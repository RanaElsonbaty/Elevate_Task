import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_root/core/routing/app_routing.dart';
import 'package:task_root/core/utils/service_locator.dart';
import 'package:task_root/features/home/presentation/view_model/products_cubit.dart';
import 'package:task_root/features/home/data/repos/products_repo_implementation.dart';
import 'package:task_root/shop_app.dart';

void main() {
  setupServiceLocator();

  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>ProductsCubit(getIt.get<ProductsRepoImplementation>())),
      ],
      child: ShopApp(appRoutes: AppRoutes(),)));
}
