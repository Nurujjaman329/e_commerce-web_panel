import 'package:flutter/material.dart';

class VendorScreens extends StatelessWidget {
  static const String routeName = '\VendorsScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Manage Vendors',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
