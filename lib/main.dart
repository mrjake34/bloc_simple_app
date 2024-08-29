import 'package:auto_route/auto_route.dart';
import 'package:bloc_simple_app/product/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bloc Simple App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router.config(
        deepLinkBuilder: (deepLink) {
          if (deepLink.path.contains('simple_one')) {
            return DeepLink(
              [
                const HomeRoute(),
                SimpleOneRoute(title: deepLink.path.split('/').last),
              ],
            );
          } else {
            return DeepLink.defaultPath;
          }
        },
      ),
    );
  }
}
