import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpod/states_manager/name_riverpod.dart';

class MyHomeScreen extends ConsumerWidget {
  const MyHomeScreen({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.read(nameStateProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameStateProvider) ?? '';
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Riverpod'), centerTitle: true),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) {
              onSubmit(ref, value);
            },
          ),
          Center(child: Text(name)),
        ],
      ),
    );
  }
}
