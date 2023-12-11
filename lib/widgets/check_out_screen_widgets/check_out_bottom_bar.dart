import 'package:flutter/material.dart';
import 'package:product_screen_ui/screens/payment_screen.dart';
import 'package:product_screen_ui/widgets/category_title_row.dart';
import 'package:product_screen_ui/widgets/shared/custom_button_widget.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class CheckOutBottomNavigationBar extends StatelessWidget {
  const CheckOutBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTitleRow(
                  title: 'Coupon', subTitle: 'Add Coupon Code >'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(text: 'Total', color: Colors.grey),
                      CustomTextWidget(
                          text: '\$170.0', fontWeight: FontWeight.bold),
                    ],
                  ),
                  CustomButtonWidget(
                      buttonText: 'Pay Now',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentScreen())),
                      buttonHeight: 50.0,
                      buttonWidth: MediaQuery.of(context).size.width * 0.38),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
