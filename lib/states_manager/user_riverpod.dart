import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpod/models/user.dart';

final userProvider = StateNotifierProvider<UserNotifier, User>(((ref) => UserNotifier()));

class UserNotifier extends StateNotifier<User> {
  UserNotifier() : super(const User(name: '', age: 0));

  void updateName(String n) {
    state = state.copyWith(name: n);
  }

  void updateAge(int a) {
    state = state.copyWith(age: a);
  }
}
