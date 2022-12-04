import 'package:flutter/material.dart';
import '../constants/colors.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            color: Color(appColors['desc']!),
            fontSize: 18,
            fontWeight: FontWeight.w600));
  }
}
