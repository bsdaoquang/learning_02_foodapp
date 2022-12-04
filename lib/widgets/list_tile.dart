import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function handleOnTap;

  const ListTileWidget(this.title, this.icon, this.handleOnTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
      ),
      leading: Icon(icon),
      onTap: () {
        handleOnTap();
      },
    );
  }
}
