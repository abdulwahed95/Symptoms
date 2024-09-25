import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActivityStateNotifier extends StateNotifier<List<bool>> {
  ActivityStateNotifier() : super(List.filled(4, false));

  void toggleActivity(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) !state[i] else state[i],
    ];
  }
}

final activityStateProvider =
    StateNotifierProvider<ActivityStateNotifier, List<bool>>(
  (ref) => ActivityStateNotifier(),
);
