import 'package:flutter/material.dart';
import 'package:go_router_learn/route/app_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRoute _appRoute = AppRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router',
      theme: ThemeData(primarySwatch: Colors.red),
      routeInformationParser: _appRoute.router.routeInformationParser,
      routeInformationProvider: _appRoute.router.routeInformationProvider,
      routerDelegate: _appRoute.router.routerDelegate,
    );
  }
}
