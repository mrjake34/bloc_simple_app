import 'package:auto_route/auto_route.dart';
import 'package:bloc_simple_app/feature/home/bloc/home_bloc.dart';
import 'package:bloc_simple_app/feature/home/service/todo_service.dart';
import 'package:bloc_simple_app/product/router/app_router.dart';
import 'package:bloc_simple_app/product/utils/service/dio_service_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeBloc(TodoService(DioServiceManager()))..add(FetchTodosEvent()),
      child: MaterialApp.router(
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
      ),
    );
  }
}

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
