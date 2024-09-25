import 'package:flutter/material.dart';
import 'package:symptoms_statistics/catalog/presentation/home/components/pie_chart.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';
import 'line_chart_widget.dart';

class SymptomsChart extends StatelessWidget {
  const SymptomsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 6, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: PieChart(
              title: 'Score previous',
              percentValue: 65,
              size: MediaQuery.of(context).size.width / 3.3,
              color: AppColors.orange,
              label: 'Moderate',
              percent: '65/100',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: AppColors.lightPurple,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.primary, width: 2),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: LineChartWidget(
              title: 'Score statics',
              size: MediaQuery.of(context).size.width / 3.3,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: PieChart(
              title: 'Symptoms score',
              percentValue: 80,
              size: MediaQuery.of(context).size.width / 3.3,
              color: AppColors.deepRed,
              label: 'Server',
              percent: '80/100',
            ),
          ),
        ],
      ),
    );
  }
}
