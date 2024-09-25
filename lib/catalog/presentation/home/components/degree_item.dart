import 'package:flutter/material.dart';

class DegreeItem extends StatelessWidget {
  final String title;
  final String degree;
  final Color color;
  const DegreeItem(
      {super.key,
      required this.title,
      required this.degree,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w600, fontSize: 12),
        ),
        const SizedBox(
          width: 6,
        ),
        Container(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              degree,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}
