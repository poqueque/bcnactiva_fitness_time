import 'package:flutter/material.dart';
import 'package:prova1/styles/app_styles.dart';

class DataCard extends StatelessWidget {
  const DataCard({
    super.key,
    required this.iconData,
    required this.label,
    required this.value,
  });

  final IconData iconData;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppStyles.heliotrope,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(iconData),
            Text(label),
            Text(
              value,
              style: AppStyles.dataLabelStyle,
            ),
          ],
        ),
      ),
    );
  }
}
