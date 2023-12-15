import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/lanuage_screen_widgets/language_screen_body.dart';
import 'package:product_screen_ui/widgets/shared/custom_app_bar.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(titleText: 'Language'),
      body: LanguageScreenBody(),
    );
  }
}
