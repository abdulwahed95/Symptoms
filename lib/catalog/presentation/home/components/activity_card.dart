import 'package:flutter/material.dart';
import 'package:symptoms_statistics/common/config/app_images.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';

class ActivityCard extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const ActivityCard({
    super.key,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.white,
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    AppImages.image,
                    width: 50,
                    height: 50,
                  ),
                ),
                const Text('Avoid spicy food'),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? AppColors.green : Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: isSelected
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 13,
                          )
                        : Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColors.textColor)),
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
