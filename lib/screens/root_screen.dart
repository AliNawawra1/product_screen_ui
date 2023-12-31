import 'package:flutter/material.dart';
import 'package:product_screen_ui/enums/cache_keys.dart';
import 'package:product_screen_ui/helpers/shared_prefs_helper/shared_prefs_helper.dart';
import 'package:product_screen_ui/screens/login_screen.dart';
import 'package:product_screen_ui/screens/main_screen.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce Home Screen',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SharedHelper.prefs.getBool(CacheKeys.isLogin.name) ?? false
          ? const MainScreen()
          : LoginScreen(),
    );
  }
}
