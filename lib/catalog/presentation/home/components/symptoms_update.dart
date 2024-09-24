import 'package:flutter/material.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';
import 'package:symptoms_statistics/common/widget/custom_rounded_btn.dart';

class SymptomsUpdate extends StatelessWidget {
  const SymptomsUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
               const EdgeInsetsDirectional.symmetric(horizontal: 32, vertical: 8),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.lightRed,
                  border: Border.all(color: AppColors.red),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 32, vertical: 8),
                  child: Text(
                    'your programs has been updated according to changes in your symstoms frequency and severity',
                    style: TextStyle(color: AppColors.textColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              CustomRoundedButton(
                text: 'Symptoms managment tool',
                textColor: Colors.white,
                border: 16,
                height: 40,
                backgroundColor: AppColors.orangeLight,
              ),
            ],
          ),
        ),

      ],
    );
  }
}
