// Providers
// Provider
// StateProvider
// StateNotifier & StateNotifierProvider

import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>((ref){
  return 'Hello Kamil!'; 
});

final nameStateProvider = StateProvider<String?>((ref) => null);