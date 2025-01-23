import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_root/core/routing/app_routing.dart';
import 'package:task_root/core/routing/routes.dart';
import 'package:task_root/core/theming/colors.dart';

class ShopApp extends StatelessWidget {
  final AppRoutes appRoutes;
  const ShopApp({super.key, required this.appRoutes});
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        navigatorKey: navKey,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
        ),
        title: "ShopApp",
        onGenerateRoute: appRoutes.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.home,
      ),
    );
  }
}
