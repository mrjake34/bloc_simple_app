part of '../home_page.dart';

class _EditBottomSheet extends StatelessWidget {
  const _EditBottomSheet();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).maybePop<HomeEvent>(FetchTodosEvent());
                },
                child: const Text('Fetch Datas'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).maybePop<HomeEvent>(DeleteTodosEvent());
                },
                child: const Text('Delete Datas'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
