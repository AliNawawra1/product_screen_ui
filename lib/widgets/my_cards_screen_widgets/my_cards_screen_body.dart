import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/my_cards_screen_widgets/custom_card_display.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class MyCardsScreenBody extends StatelessWidget {
  const MyCardsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextWidget(
                text: 'Your Payment Cards',
                fontSize: 13.0,
                color: Colors.grey.shade600),
            const SizedBox(height: 25.0),
            const CustomCardDisplay(
                cardNumber: '1245 1654 5481 3425',
                expiryDate: '01/21',
                icon: Icons.credit_card_rounded),
            const SizedBox(height: 15.0),
            const CustomCardDisplay(
              cardNumber: '2154 3451 1212 1451',
              expiryDate: '05/25',
              icon: Icons.credit_card_rounded,
              containerColor: Colors.blueGrey,
            )
          ],
        ),
      ),
    );
  }
}
