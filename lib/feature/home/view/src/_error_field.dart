part of '../home_page.dart';

class _ErrorField extends StatelessWidget {
  const _ErrorField(this.error);
  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}
