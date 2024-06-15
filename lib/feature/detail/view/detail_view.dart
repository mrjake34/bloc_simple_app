import 'package:bloc_simple_app/feature/home/bloc/home_bloc.dart';
import 'package:bloc_simple_app/feature/home/model/todos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.todo, required this.bloc});
  final Todos todo;
  final HomeBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('${todo.id ?? ''}'),
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Column(
                children: [
                  Text('${todo.userId ?? ''}'),
                  Text(todo.title ?? ''),
                  Text('${todo.completed ?? ''}'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
