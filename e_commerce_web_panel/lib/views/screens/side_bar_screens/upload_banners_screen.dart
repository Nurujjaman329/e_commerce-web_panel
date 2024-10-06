import 'package:flutter/material.dart';

class UploadBannersScreen extends StatelessWidget {
  static const String routeName = '\UploadBannerScreens';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Upload Banners',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
