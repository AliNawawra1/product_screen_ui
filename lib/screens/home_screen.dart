import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/home_screen_widgets/home_app_bar.dart';
import 'package:product_screen_ui/widgets/home_screen_widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppBar(),
      body: HomeScreenBody(),
    );
  }
}
