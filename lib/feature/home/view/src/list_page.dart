import 'package:auto_route/auto_route.dart';
import 'package:bloc_simple_app/feature/detail/view/detail_page.dart';
import 'package:bloc_simple_app/feature/home/bloc/home_bloc.dart';
import 'package:bloc_simple_app/product/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final todos = state.todos;
        return ListView.builder(
          itemCount: todos?.length ?? 0,
          itemBuilder: (context, index) {
            final todo = todos?[index];
            return Card(
              child: ListTile(
                onTap: () {
                  if (todo == null) return;
                  context.router.push(
                    DetailRoute(todo: todo, bloc: bloc),
                  );
                },
                title: Text(todo?.title ?? ''),
                trailing: todo?.completed == true
                    ? const Icon(Icons.check_circle)
                    : const Icon(Icons.circle_outlined),
                leading: TextButton(
                    onPressed: () {
                      // context.router.pushAll(
                      //   [
                      //     DetailRoute(todo: todo, bloc: bloc),
                      //     EditRoute(
                      //       label: todo.id.toString(),
                      //     ),
                      //   ],
                      // );
                      context.router.maybePop(true);
                      context.router.push(
                        EditRoute(
                          label: todo?.id.toString() ?? '',
                        ),
                      );
                    },
                    child:
                        CircleAvatar(child: Text(todo?.id.toString() ?? ''))),
              ),
            );
          },
        );
      },
    );
  }
}
