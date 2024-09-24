import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';
import 'package:animate_do/animate_do.dart';

import '../../../../common/widget/custom_rounded_btn.dart';
import '../state/button_state.dart';

class SymptomsTap extends ConsumerWidget {
  const SymptomsTap({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ButtonType selectedButton = ref.watch(buttonStateProvider);

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: FadeIn(
              child: CustomRoundedButton(
                backgroundColor: selectedButton == ButtonType.statistics
                    ? AppColors.primary
                    : AppColors.grey,
                text: 'Symptoms statistics',
                textColor: selectedButton == ButtonType.statistics
                    ? AppColors.white
                    : AppColors.blackColor,
                pressed: () {
                  ref
                      .read(buttonStateProvider.notifier)
                      .selectButton(ButtonType.statistics);
                },
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: FadeIn(
              child: CustomRoundedButton(
                backgroundColor: selectedButton == ButtonType.daily
                    ? AppColors.primary
                    : AppColors.grey,
                text: 'Symptoms daily',
                textColor: selectedButton == ButtonType.daily
                    ? AppColors.white
                    : AppColors.blackColor,
                pressed: () {
                  ref
                      .read(buttonStateProvider.notifier)
                      .selectButton(ButtonType.daily);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
