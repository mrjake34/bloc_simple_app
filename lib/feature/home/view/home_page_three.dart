import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeThreePage extends StatelessWidget {
  const HomeThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page Three'),
      ),
      body: const Center(
        child: Text('Home Page Three'),
      ),
    );
  }
}
