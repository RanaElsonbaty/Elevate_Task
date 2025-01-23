import 'package:flutter/material.dart';
import 'package:task_root/core/routing/routes.dart';
import 'package:task_root/features/home/presentation/view/home_screen.dart';

class AppRoutes {
  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
