import 'package:flutter/material.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';

import 'degree_row.dart';

class SymptomsCard extends StatelessWidget {
  final String icon;
  final String percentage;
  final Color color;
  const SymptomsCard(
      {super.key,
      required this.icon,
      required this.percentage,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 6),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 2,
                  spreadRadius: 2),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    icon,
                    width: 12,
                    height: 12,
                    color: AppColors.green,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Sleep',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.purple,
                        fontSize: 16,
                        decoration: TextDecoration.underline),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_right,
                    size: 25,
                    color: AppColors.green,
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            color,
                            color.withOpacity(0.4),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: double.tryParse(percentage)! * 1.1,
                          vertical: 4),
                      child: Text(
                        '$percentage %',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Spacer(),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 25,
                    color: AppColors.green,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Symptoms frequency and severity',
                  style: TextStyle(color: AppColors.textColor),
                ),
              ),
              const DegreeRow(),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: AppColors.green),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('1',
                          style: TextStyle(
                            color: AppColors.green,
                            fontSize: 12,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Number of times reported',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.info_outline_rounded,
                    color: AppColors.green,
                    size: 18,
                  ),
                  const Spacer(),
                  const Spacer(),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
