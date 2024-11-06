import 'package:auto_route/auto_route.dart';
import 'package:bloc_simple_app/feature/detail/view/detail_page.dart';
import 'package:bloc_simple_app/feature/edit/view/edit_page.dart';
import 'package:bloc_simple_app/feature/home/bloc/home_bloc.dart';
import 'package:bloc_simple_app/feature/home/model/todos.dart';
import 'package:bloc_simple_app/feature/home/view/home_page.dart';
import 'package:bloc_simple_app/feature/home/view/home_page_three.dart';
import 'package:bloc_simple_app/feature/home/view/home_page_two.dart';
import 'package:bloc_simple_app/feature/home/view/main_page.dart';
import 'package:bloc_simple_app/feature/home/view/src/list_page.dart';
import 'package:bloc_simple_app/feature/simple_pages/view/simple_page_one.dart';
import 'package:bloc_simple_app/feature/simple_pages/view/simple_page_three.dart';
import 'package:bloc_simple_app/feature/simple_pages/view/simple_page_two.dart';
import 'package:bloc_simple_app/main.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
final class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          path: '/',
          children: [
            AutoRoute(
              page: homeRoute.page,
              path: 'home',
              children: [
                AutoRoute(
                  initial: true,
                  page: ListRoute.page,
                  path: 'list',
                ),
                AutoRoute(
                  page: EditRoute.page,
                  path: 'edit/:label',
                ),
                AutoRoute(
                  path: 'detail/:todo',
                  page: DetailRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: HomeTwoRoute.page,
            ),
            AutoRoute(
              page: HomeThreeRoute.page,
            ),
          ],
        ),
      ];
}

const simpleTab = EmptyShellRoute('SimpleTab');
const homeRoute = EmptyShellRoute('HomeRoute');
