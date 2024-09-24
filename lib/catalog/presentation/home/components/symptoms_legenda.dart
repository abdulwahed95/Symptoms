import 'package:flutter/material.dart';

class SymptomsLegenda extends StatelessWidget {
  final String title;
  final Color color;
  const SymptomsLegenda({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 30,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.3),
                color,
              ],
            ),
          ),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width/5,
            child: Center(child: Text(title,maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 11),)))
      ],
    );
  }
}
