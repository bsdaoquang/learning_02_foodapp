import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/meal-detail';

  const MealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
        appBar: AppBar(title: Text('Meal Detail $id')),
        body: Container(child: Text('Meal Detail')));
  }
}
