// text có thể có hình ảnh hoặc không
import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const LabelWidget(this.icon, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: Colors.black54,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(label)
      ],
    );
  }
}
