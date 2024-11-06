import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SimpleThreePage extends StatelessWidget {
  const SimpleThreePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Page Three'),
      ),
      body: const Center(
        child: Text('Simple Page Three'),
      ),
    );
  }
}
