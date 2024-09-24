import 'package:awesome_circular_chart/awesome_circular_chart.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  final double size;
  final Color color;
  final String percent;
  final String label;
  final double percentValue;
  final String title;
  const PieChart(
      {super.key,
      required this.size,
      required this.color,
      required this.percent,
      required this.label,
      required this.title,
      required this.percentValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
          ),
        ),
        Stack(
          children: [
            AnimatedCircularChart(
              size: Size(size, size),
              initialChartData: <CircularStackEntry>[
                CircularStackEntry(
                  <CircularSegmentEntry>[
                    CircularSegmentEntry(
                      percentValue,
                      color,
                      rankKey: 'completed',
                    ),
                    CircularSegmentEntry(
                      100,
                      color.withOpacity(0.4),
                      rankKey: 'remaining',
                    ),
                  ],
                  rankKey: 'progress',
                ),
              ],
              chartType: CircularChartType.Radial,
              holeRadius: 30,
              edgeStyle: SegmentEdgeStyle.round,
              percentageValues: true,
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      percent,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      label,
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
