import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '/data/meals.dart';

class CategoryDetail extends StatelessWidget {
  static const routeName = '/category-detail';
  const CategoryDetail({super.key});
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final title = routeArgs['title'];
    final id = routeArgs['id'];

    // Lọc ra những món trong categories có chứa id này
    final categoryMeals = MEALS.where((element) {
      return element.categories.contains(id);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: ListView.builder(
          itemBuilder: (meal, index) {
            return MealItem(categoryMeals[index]);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
