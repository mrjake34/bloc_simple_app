part of '../home_page.dart';

class _ListViewBuilder extends StatelessWidget {
  const _ListViewBuilder({required this.todos});
  final List<Todos> todos;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return Card(
          child: ListTile(
            onTap: () {
              context.router.push(
                DetailRoute(todo: todo, bloc: bloc),
              );
            },
            title: TextButton(
              onPressed: () {
                context.router.pushAll(
                  [
                    DetailRoute(todo: todo, bloc: bloc),
                    EditRoute(label: todo.title ?? ''),
                  ],
                );
              },
              child: Text(todo.title ?? ''),
            ),
            trailing: todo.completed == true
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
                      label: todo.id.toString(),
                    ),
                  );
                },
                child: CircleAvatar(child: Text(todo.id.toString()))),
          ),
        );
      },
    );
  }
}
