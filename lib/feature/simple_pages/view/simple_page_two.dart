import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SimpleTwoPage extends StatelessWidget {
  const SimpleTwoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Page Two'),
      ),
      body: const Center(
        child: Text('Simple Page Two'),
      ),
    );
  }
}
