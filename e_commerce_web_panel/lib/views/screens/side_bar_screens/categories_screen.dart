import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  static const String routeName = '\CategoriesScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Categories',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
