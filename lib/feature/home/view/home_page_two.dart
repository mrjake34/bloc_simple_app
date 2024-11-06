import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeTwoPage extends StatelessWidget {
  const HomeTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page Two'),
      ),
      body: const Center(
        child: Text('Home Page Two'),
      ),
    );
  }
}
