import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';
import './screens/meal_detail.dart';
import './screens/category_detail.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const TabsScreen(),
        CategoryDetail.routeName: (context) => const CategoryDetail(),
        MealDetail.routeName: ((context) => const MealDetail())
      },

      // Điều hướng
      // onGenerateRoute: (settings) {
      //   return MaterialPageRoute(
      //       builder: (context) => const CategoriesScreen());
      // },

      // Trường hợp nếu route không tồn tại sẽ chuyển đến trang chủ
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
            builder: (context) => const CategoriesScreen());
      },
    );
  }
}
