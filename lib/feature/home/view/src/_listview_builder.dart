part of '../home_view.dart';

class _ListViewBuilder extends StatelessWidget {
  const _ListViewBuilder({required this.todos});
  final List<Todos> todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return ListTile(
          title: Text(todo.title ?? ''),
          subtitle: Text('${todo.id ?? 0}'),
        );
      },
    );
  }
}
