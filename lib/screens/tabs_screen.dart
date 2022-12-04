import 'package:flutter/material.dart';
import '../screens/categories.dart';
import '../screens/favorites.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': const CategoriesScreen(), 'title': 'Categories'},
    {'page': const FavoritesScreen(), 'title': 'Favorites'}
  ];

  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectedPage,
          currentIndex: _selectedPageIndex,
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
                label: 'Categories', icon: Icon(Icons.category)),
            BottomNavigationBarItem(label: 'Favorites', icon: Icon(Icons.star))
          ]),
    );
  }
}
