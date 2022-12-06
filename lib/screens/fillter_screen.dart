import 'package:flutter/material.dart';

class FillterScreen extends StatefulWidget {
  static const routeName = '/fillter';

  const FillterScreen({super.key});

  @override
  State<FillterScreen> createState() => _FillterScreenState();
}

class _FillterScreenState extends State<FillterScreen> {
  bool _isGluten = false;
  bool _isLactose = false;
  bool _isVegan = false;
  bool _isVegetarian = false;

  Map<String, bool> _fillter = {
    'isGluten': false,
    'isLactose': false,
    'isVegan': false,
    'isVegetarian': false
  };

  @override
  void initState() {
    _fillter = {
      'isGluten': _isGluten,
      'isLactose': _isLactose,
      'isVegan': _isVegan,
      'isVegetarian': _isVegetarian
    };
    super.initState();
  }

  Widget _FillterItem(
      String title, String description, bool value, Function onChange) {
    return SwitchListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(description),
        value: value,
        onChanged: (val) => onChange(val));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lọc'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.save))],
      ),
      body: Column(
        children: [
          _FillterItem('Glucose', 'Có đường', _isGluten, (val) {
            setState(() {
              _isGluten = val;
            });
          }),
          _FillterItem('Lactose', 'Đường hóa học', _isLactose, (val) {
            setState(() {
              _isLactose = val;
            });
          })
        ],
      ),
    );
  }
}
