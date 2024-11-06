import 'package:auto_route/auto_route.dart';
import 'package:bloc_simple_app/feature/home/bloc/home_bloc.dart';
import 'package:bloc_simple_app/feature/home/model/todos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.todo, required this.bloc});
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
                  const Text('Detail Page'),
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
