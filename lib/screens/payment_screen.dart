import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/payment_screen_widgets/payment_screen_body.dart';
import 'package:product_screen_ui/widgets/shared/custom_app_bar.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(titleText: 'Payment'),
      body: PaymentScreenBody(),
    );
  }
}
