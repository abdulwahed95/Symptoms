import 'package:flutter/material.dart';
import 'package:symptoms_statistics/catalog/presentation/home/components/degree_item.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';

class DegreeRow extends StatelessWidget {
  const DegreeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DegreeItem(title: 'Low', degree:'1', color: AppColors.green),
        DegreeItem(title: 'Moderate', degree:'3', color: AppColors.yellow),
        DegreeItem(title: 'High', degree:'4', color: AppColors.lightOrange),
        DegreeItem(title: 'Extreme', degree:'5', color: AppColors.red),
      ],
    );
  }
}
