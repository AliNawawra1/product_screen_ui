import 'package:flutter/material.dart';
import 'package:product_screen_ui/helpers/dio_helper/dio_helper.dart';
import 'package:product_screen_ui/helpers/shared_prefs_helper/shared_prefs_helper.dart';
import 'package:product_screen_ui/screens/root_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedHelper.init();
  DioHelper.init();
  runApp(const EcommerceApp());
}
