import 'package:flutter/material.dart';
import '../screens/category_detail.dart';
import 'title_widget.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color, {super.key});

  void _selectedCategory(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryDetail.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedCategory(context),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color.withOpacity(0.6), color]),
            borderRadius: BorderRadius.circular(16)),
        child: TitleWidget(title),
      ),
    );
  }
}
