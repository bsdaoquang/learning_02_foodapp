import 'package:flutter/material.dart';
import 'package:learning_02_foodapp/screens/category_detail.dart';
import './screens/categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Nunito',
      ),
      title: 'Food App',
      home: const CategoriesScreen(),
      routes: {'/category-detail': (context) => CategoryDetail()},
    );
  }
}
