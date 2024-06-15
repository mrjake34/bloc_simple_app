part of '../home_view.dart';

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
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailView(
                      todo: todo,
                      bloc: bloc,
                    ))),
            title: Text(todo.title ?? ''),
            trailing: todo.completed == true
                ? const Icon(Icons.check_circle)
                : const Icon(Icons.circle_outlined),
            leading: CircleAvatar(child: Text(index.toString())),
          ),
        );
      },
    );
  }
}
