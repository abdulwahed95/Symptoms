import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:symptoms_statistics/catalog/presentation/home/components/symptoms_card.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';
import 'package:symptoms_statistics/common/config/app_images.dart';

class SymptomsList extends StatelessWidget {
  const SymptomsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGreen,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 8.0, top: 16),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.7,
                      height: 42,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            'Average frequency reported as percentage of all',
                            textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.55)),
                            speed: const Duration(milliseconds: 55),
                          ),
                        ],
                        totalRepeatCount: 1,
                        pause: const Duration(milliseconds: 5000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      )),
                ),
                Row(
                  children: [
                    Text(
                      'View all',
                      style: TextStyle(
                          color: AppColors.green, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.arrow_drop_down_sharp,
                      size: 24,
                      color: AppColors.green,
                    )
                  ],
                )
              ],
            ),
          ),
          AnimationLimiter(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                          child: SymptomsCard(
                        color: index % 2 == 0 ? Colors.red : AppColors.orange,
                        icon: AppImages.fire,
                        percentage: index % 2 == 0 ? '5' : '15',
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
