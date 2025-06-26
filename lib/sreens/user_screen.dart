import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpod/states_manager/user_riverpod.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).updateAge(int.parse(value));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(title: Text(user.name), centerTitle: true),
      body: Column(
        children: [
          TextField(onSubmitted: (value) => onSubmit(ref, value)),
          TextField(onSubmitted: (value) => onSubmitAge(ref, value)),
          Center(child: Text(user.name.toString())),
          Center(child: Text(user.age.toString())),
        ],
      ),
    );
  }
}
