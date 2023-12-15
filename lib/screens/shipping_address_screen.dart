import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/shared/custom_app_bar.dart';
import 'package:product_screen_ui/widgets/shipping_address_widgets/shipping_address_body.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(titleText: 'Shipping Address'),
      body: ShippingAddressBody(),
    );
  }
}
