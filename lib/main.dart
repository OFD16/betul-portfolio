import 'package:betul_portfolio/screens/homeScreen/home_view.dart';
import 'package:flutter/material.dart';

import 'product/navigator/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      // routerDelegate: _appRouter.delegate(),
      // routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     debugShowCheckedModeBanner: false,
  //     home: const Scaffold(body: HomeScreen()),
  //   );
  // }
}
