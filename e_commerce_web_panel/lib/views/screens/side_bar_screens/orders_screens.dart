import 'package:flutter/material.dart';

class OrdersScreens extends StatelessWidget {
  static const String routeName = '\OrdersScreens';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Orders',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
