import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/cart_screen_widgets/cart_bottom_navigation_bar.dart';
import 'package:product_screen_ui/widgets/cart_screen_widgets/cart_screen_body.dart';
import 'package:product_screen_ui/widgets/shared/custom_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(titleText: 'Your Cart'),
      body: CartScreenBody(),
      bottomNavigationBar: CartBottomNavigationBar(),
    );
  }
}
