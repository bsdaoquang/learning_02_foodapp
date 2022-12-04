import 'package:flutter/material.dart';
import 'package:learning_02_foodapp/data/meals.dart';
import 'package:learning_02_foodapp/widgets/title_widget.dart';
import '/models/meal.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/meal-detail';

  const MealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as String;

    // Dựa vào id lấy được thông tin món ăn
    final Meal mealDetail = MEALS.firstWhere(((element) => element.id == id));
    return Scaffold(
        appBar: AppBar(title: Text(mealDetail.title)),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.network(
                mealDetail.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            const TitleWidget('Nguyên liệu'),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: mealDetail.ingredients
                          .map((e) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 4),
                                child: Text(
                                    '${mealDetail.ingredients.indexOf(e) + 1}. $e'),
                              ))
                          .toList(),
                    ),
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 6,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleWidget('Các bước thực hiện'),
                      Column(
                        children: mealDetail.step.map((e) => Text(e)).toList(),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
