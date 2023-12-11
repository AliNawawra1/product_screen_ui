import 'package:flutter/material.dart';
import 'package:product_screen_ui/screens/check_out_screen.dart';
import 'package:product_screen_ui/widgets/cart_screen_widgets/bottom_navigation_row.dart';
import 'package:product_screen_ui/widgets/shared/custom_button_widget.dart';

class CartBottomNavigationBar extends StatelessWidget {
  const CartBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BottomNavigationRow(label: 'Sub Total', value: '\$150.0'),
                      Divider(color: Colors.grey),
                      BottomNavigationRow(label: 'Total', value: '\$170.0'),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: CustomButtonWidget(
                  buttonText: 'Check Out',
                  buttonHeight: 50.0,
                  buttonWidth: MediaQuery.of(context).size.width * 0.43,
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckOutScreen())),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
