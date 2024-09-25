import 'package:flutter/material.dart';
import 'package:symptoms_statistics/catalog/presentation/home/components/symptoms_legenda.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';

class SymptomsTotal extends StatelessWidget {
  const SymptomsTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.lightGreen.withOpacity(0.3),
              AppColors.lightGreen,
            ],
            stops: const [0, 0.7],
            end: const Alignment(0.0, -1),
            begin: const Alignment(0.0, 0.6),
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 4),
            child: Row(
              children: [
                Text(
                  'Total: 6 symptoms',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 26,
                ),
                Text(
                  '100%',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 8, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 2,
                            blurRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 6, vertical: 2),
                    child: Text(
                      'Legenda',
                      style: TextStyle(color: AppColors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SymptomsLegenda(
                color: AppColors.yellow,
                title: 'the same',
              ),
              SymptomsLegenda(
                color: AppColors.deepRed,
                title: 'deterioration',
              ),
              SymptomsLegenda(
                color: AppColors.blue,
                title: 'significant improvement',
              ),
              SymptomsLegenda(
                color: AppColors.green,
                title: 'slight improvement',
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
