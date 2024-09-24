import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ButtonType { statistics, daily }

class ButtonStateNotifier extends StateNotifier<ButtonType> {
  ButtonStateNotifier() : super(ButtonType.statistics);

  void selectButton(ButtonType buttonType) {
    state = buttonType;
  }
}

final buttonStateProvider = StateNotifierProvider<ButtonStateNotifier, ButtonType>(
      (ref) => ButtonStateNotifier(),
);
