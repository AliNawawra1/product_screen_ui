import 'package:flutter/material.dart';
import 'package:product_screen_ui/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce Home Screen',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

