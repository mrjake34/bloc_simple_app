part of '../home_page.dart';

class _LoadingField extends StatelessWidget {
  const _LoadingField();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
