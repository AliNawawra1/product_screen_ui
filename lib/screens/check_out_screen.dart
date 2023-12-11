import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/check_out_screen_widgets/check_out_bottom_bar.dart';
import 'package:product_screen_ui/widgets/check_out_screen_widgets/check_out_screen_body.dart';
import 'package:product_screen_ui/widgets/shared/custom_app_bar.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(titleText: 'Check Out'),
      body: CheckOutScreenBody(),
      bottomNavigationBar: CheckOutBottomNavigationBar(),
    );
  }
}
