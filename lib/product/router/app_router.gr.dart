// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DetailPage]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    Key? key,
    required Todos todo,
    required HomeBloc bloc,
    List<PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            todo: todo,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailRouteArgs>();
      return DetailPage(
        key: args.key,
        todo: args.todo,
        bloc: args.bloc,
      );
    },
  );
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.todo,
    required this.bloc,
  });

  final Key? key;

  final Todos todo;

  final HomeBloc bloc;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, todo: $todo, bloc: $bloc}';
  }
}

/// generated route for
/// [EditPage]
class EditRoute extends PageRouteInfo<EditRouteArgs> {
  EditRoute({
    Key? key,
    required String label,
    List<PageRouteInfo>? children,
  }) : super(
          EditRoute.name,
          args: EditRouteArgs(
            key: key,
            label: label,
          ),
          initialChildren: children,
        );

  static const String name = 'EditRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditRouteArgs>();
      return EditPage(
        key: args.key,
        label: args.label,
      );
    },
  );
}

class EditRouteArgs {
  const EditRouteArgs({
    this.key,
    required this.label,
  });

  final Key? key;

  final String label;

  @override
  String toString() {
    return 'EditRouteArgs{key: $key, label: $label}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [SimpleOnePage]
class SimpleOneRoute extends PageRouteInfo<SimpleOneRouteArgs> {
  SimpleOneRoute({
    Key? key,
    String? title,
    List<PageRouteInfo>? children,
  }) : super(
          SimpleOneRoute.name,
          args: SimpleOneRouteArgs(
            key: key,
            title: title,
          ),
          rawPathParams: {'title': title},
          initialChildren: children,
        );

  static const String name = 'SimpleOneRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<SimpleOneRouteArgs>(
          orElse: () =>
              SimpleOneRouteArgs(title: pathParams.optString('title')));
      return SimpleOnePage(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class SimpleOneRouteArgs {
  const SimpleOneRouteArgs({
    this.key,
    this.title,
  });

  final Key? key;

  final String? title;

  @override
  String toString() {
    return 'SimpleOneRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [SimpleTwoPage]
class SimpleTwoRoute extends PageRouteInfo<void> {
  const SimpleTwoRoute({List<PageRouteInfo>? children})
      : super(
          SimpleTwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'SimpleTwoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SimpleTwoPage();
    },
  );
}
