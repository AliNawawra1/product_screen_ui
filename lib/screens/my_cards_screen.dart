import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/my_cards_screen_widgets/my_cards_screen_body.dart';
import 'package:product_screen_ui/widgets/shared/custom_app_bar.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        titleText: 'My Cards',
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(Icons.add))
        ],
      ),
      body: MyCardsScreenBody(),
    );
  }
}
