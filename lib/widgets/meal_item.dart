import 'package:flutter/material.dart';
import '/widgets/label_widget.dart';
import '../screens/meal_detail.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal, {super.key});

  void _selectedMeal(BuildContext context) {
    Navigator.of(context).pushNamed(MealDetail.routeName, arguments: meal.id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedMeal(context),
      splashColor: Colors.amber.withOpacity(0.7),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 4,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.network(
                      meal.imageUrl,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 20,
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color.fromRGBO(44, 62, 80, 0),
                        Color.fromRGBO(44, 62, 80, 0.7)
                      ])),
                      width: 200,
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        meal.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LabelWidget(
                        Icons.timer_off_outlined, '${meal.duration} min'),
                    LabelWidget(Icons.work, meal.complexity.name),
                    LabelWidget(
                        Icons.price_check_outlined, meal.affordability.name)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
