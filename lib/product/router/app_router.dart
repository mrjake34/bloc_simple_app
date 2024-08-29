import 'package:auto_route/auto_route.dart';
import 'package:bloc_simple_app/feature/detail/view/detail_page.dart';
import 'package:bloc_simple_app/feature/edit/view/edit_page.dart';
import 'package:bloc_simple_app/feature/home/bloc/home_bloc.dart';
import 'package:bloc_simple_app/feature/home/model/todos.dart';
import 'package:bloc_simple_app/feature/home/view/home_page.dart';
import 'package:bloc_simple_app/feature/simple_pages/view/simple_page_one.dart';
import 'package:bloc_simple_app/feature/simple_pages/view/simple_page_two.dart';
import 'package:bloc_simple_app/product/router/route_path.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
final class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: RoutePath.splash.path,
          initial: true,
        ),
        AutoRoute(
          page: DetailRoute.page,
          path: RoutePath.detail.path,
        ),
        AutoRoute(
          page: EditRoute.page,
          path: RoutePath.edit.path,
        ),
        AutoRoute(
          page: SimpleOneRoute.page,
          path: '${RoutePath.simpleOne.path}:title/',
        ),
        AutoRoute(
          page: SimpleTwoRoute.page,
          path: RoutePath.simpleTwo.path,
        ),
      ];
}
