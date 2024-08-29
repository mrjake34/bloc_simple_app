import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SimpleOnePage extends StatelessWidget {
  const SimpleOnePage({super.key, @PathParam('title') this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'Simple Page One'),
      ),
      body: const Center(
        child: Text('Simple Page One'),
      ),
    );
  }
}
