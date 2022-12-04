import 'package:flutter/material.dart';
import '/screens/fillter_screen.dart';
import '/widgets/list_tile.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.amber,
            child: Text(
              'Cooking up!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          ListTileWidget('Home', Icons.home, () {
            Navigator.of(context).pushNamed('/');
          }),
          ListTileWidget('Fillter', Icons.settings, () {
            Navigator.of(context).pushNamed(FillterScreen.routeName);
          }),
        ],
      ),
    );
  }
}
