import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:symptoms_statistics/catalog/presentation/home/components/activity_card.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';
import '../view_model/activity_state.dart';

class SymptomsActivity extends ConsumerWidget {
  const SymptomsActivity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activityStates = ref.watch(activityStateProvider);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Here are some activities and reminders on how to improve your symptoms',
            style: TextStyle(color: AppColors.textColor),
          ),
          AnimationLimiter(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: activityStates.length,
              itemBuilder: (BuildContext context, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                          child: ActivityCard(
                        isSelected: activityStates[index],
                        onTap: () {
                          ref
                              .read(activityStateProvider.notifier)
                              .toggleActivity(index);
                        },
                      ))),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
