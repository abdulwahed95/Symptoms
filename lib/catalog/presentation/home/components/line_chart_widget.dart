import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../../../common/config/app_colors.dart';

class LineChartWidget extends StatefulWidget {
  final double size;
  final String title;
  const LineChartWidget({super.key, required this.size, required this.title});

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  List<Color> gradientColors = [
    AppColors.primary,
    AppColors.primary,
  ];

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    var style = TextStyle(
        color: AppColors.primary, fontSize: 8, fontWeight: FontWeight.w600);
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('MO', style: style);
        break;
      case 3:
        text = Text('TU', style: style);
        break;
      case 5:
        text = Text('WE', style: style);
        break;
      case 7:
        text = Text('TH', style: style);
        break;
      case 9:
        text = Text('FR', style: style);
        break;
      case 11:
        text = Text('SA', style: style);
        break;
      case 13:
        text = Text('SU', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            ),
          ),
          SizedBox(
            width: widget.size,
            child: AspectRatio(
              aspectRatio: 1.31,
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 6),
                child: LineChart(
                  LineChartData(
                    gridData: const FlGridData(
                      show: false,
                      drawHorizontalLine: false,
                      drawVerticalLine: false,
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 35,
                          interval: 1,
                          getTitlesWidget: bottomTitleWidgets,
                        ),
                      ),
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                          interval: 1,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    minX: 0,
                    maxX: 14,
                    minY: 7,
                    maxY: 0,
                    lineBarsData: [
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 3),
                          FlSpot(2.6, 2),
                          FlSpot(4.9, 5),
                          FlSpot(6.8, 3.1),
                          FlSpot(8, 4),
                          FlSpot(9.5, 3),
                          FlSpot(11, 4),
                          FlSpot(12, 3),
                          FlSpot(13, 3),
                          FlSpot(14, 2),
                        ],
                        isCurved: false,
                        gradient: LinearGradient(
                          colors: [
                            AppColors.primary,
                            AppColors.primary,
                          ],
                        ),
                        dotData: const FlDotData(show: false),
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: LinearGradient(
                            colors: gradientColors
                                .map((color) => color.withOpacity(0.1))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Text(
            '7 days',
            style: TextStyle(
                color: AppColors.primary, decoration: TextDecoration.underline),
          )
        ],
      ),
    );
  }
}
