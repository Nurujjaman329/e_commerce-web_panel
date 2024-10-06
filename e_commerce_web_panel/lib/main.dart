import 'dart:io';

import 'package:e_commerce_web_panel/views/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: kIsWeb || Platform.isAndroid
        ? FirebaseOptions(
            apiKey: 'AIzaSyAbAZBHbAXtDxyLBnWv0AF8hkDhebQmW98',
            appId: ':260677097183:web:84c93762346cb4feb97b6a',
            messagingSenderId: '260677097183',
            projectId: 'e-commerce-app-26944',
            storageBucket: 'e-commerce-app-26944.appspot.com',
          )
        : null,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce Admin Panel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
