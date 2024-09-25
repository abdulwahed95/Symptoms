import 'package:flutter_riverpod/flutter_riverpod.dart';

class DropdownStateNotifier extends StateNotifier<String?> {
  DropdownStateNotifier() : super(null);

  void setValue(String? value) {
    state = value;
  }
}

final dropdownStateProvider =
    StateNotifierProvider<DropdownStateNotifier, String?>(
  (ref) => DropdownStateNotifier(),
);
