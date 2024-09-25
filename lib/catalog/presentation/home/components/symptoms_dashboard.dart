import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/config/app_colors.dart';
import '../view_model/drop_down_notifier.dart';

class SymptomsDashboard extends ConsumerWidget {
  const SymptomsDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const List<String> list = [
      'week',
      'month',
      'year',
    ];
    final selectedValue = ref.watch(dropdownStateProvider);
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8.0, end: 8, top: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeInLeftBig(
                  duration: const Duration(milliseconds: 250),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('Symptoms Dashboard',
                          speed: const Duration(milliseconds: 140),
                          textStyle: TextStyle(
                              fontSize: 20,
                              height: 0.7,
                              fontWeight: FontWeight.w600,
                              color: AppColors.purple)),
                    ],
                    isRepeatingAnimation: false,
                    onTap: () {},
                  )),
              DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: Row(
                    children: [
                      Expanded(
                        child: Text(
                          selectedValue ?? 'week',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: list
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                      .toList(),
                  onChanged: (String? value) {
                    ref.read(dropdownStateProvider.notifier).setValue(value);
                  },
                  buttonStyleData: ButtonStyleData(
                    height: 35,
                    width: 84,
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.primary,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  iconStyleData: IconStyleData(
                    icon: const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                      ),
                    ),
                    iconSize: 14,
                    iconEnabledColor: AppColors.primary,
                    iconDisabledColor: Colors.grey,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    offset: const Offset(-20, 0),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: MaterialStateProperty.all<double>(6),
                      thumbVisibility: MaterialStateProperty.all<bool>(true),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                    padding: EdgeInsets.only(left: 14, right: 14),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
