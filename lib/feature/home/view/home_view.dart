import 'package:bloc_simple_app/feature/home/bloc/home_bloc.dart';
import 'package:bloc_simple_app/feature/home/service/todo_service.dart';
import 'package:bloc_simple_app/feature/detail/view/detail_view.dart';
import 'package:bloc_simple_app/product/src/bottomsheet/custom_bottom_sheet.dart';
import 'package:bloc_simple_app/product/utils/service/dio_service_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/todos.dart';

part 'src/_listview_builder.dart';
part 'src/_error_field.dart';
part 'src/_loading_field.dart';
part 'src/_edit_bottom_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeBloc(TodoService(DioServiceManager()))..add(FetchTodosEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todos'),
          actions: const [_IconButton()],
        ),
        body: const _PageBuilder(),
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () async {
          final result = await CustomBottomSheet.show<HomeEvent>(
            context: context,
            child: const _EditBottomSheet(),
          );
          if (result == null) return;
          context.read<HomeBloc>().add(result);
        },
        icon: const Icon(Icons.refresh));
  }
}

class _PageBuilder extends StatelessWidget {
  const _PageBuilder();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.error != null && state.error!.isNotEmpty) {
          return _ErrorField(state.error!);
        } else if (state.todos != null && state.todos!.isNotEmpty) {
          return _ListViewBuilder(
            todos: state.todos!,
          );
        }
        return const _LoadingField();
      },
    );
  }
}
