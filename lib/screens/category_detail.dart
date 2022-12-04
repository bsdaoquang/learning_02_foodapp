import 'package:flutter/material.dart';

class CategoryDetail extends StatelessWidget {
  const CategoryDetail({super.key});
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final title = routeArgs['title'];
    final _id = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Container(
        child: Text(title),
      ),
    );
  }
}
