import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../common/config/app_colors.dart';

class SymptomsToggle extends StatelessWidget {
  const SymptomsToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeInLeftBig(
                      duration: const Duration(milliseconds: 200),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            'Symptoms frequency and severity',
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.purple),
                            speed: const Duration(milliseconds: 50),
                          ),
                        ],
                        totalRepeatCount: 1,
                        pause: const Duration(milliseconds: 5000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      )),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    color: AppColors.green,
                    size: 30,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(color: AppColors.grey, spreadRadius: 2, blurRadius: 2)
              ]),
          child: ToggleSwitch(
            minWidth: MediaQuery.of(context).size.width,
            cornerRadius: 8.0,
            activeBgColors: [
              [AppColors.green],
              [AppColors.green]
            ],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Colors.grey,
            initialLabelIndex: 1,
            totalSwitches: 2,
            fontSize: 15,
            customTextStyles: const [
              TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
              TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600)
            ],
            labels: ['Sypstoms reported', 'Triggers reported'],
            radiusStyle: true,
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ),
      ],
    );
  }
}
