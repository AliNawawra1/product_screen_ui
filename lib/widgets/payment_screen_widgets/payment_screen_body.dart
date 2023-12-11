import 'package:flutter/material.dart';
import 'package:product_screen_ui/screens/main_screen.dart';
import 'package:product_screen_ui/widgets/shared/custom_button_widget.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class PaymentScreenBody extends StatelessWidget {
  const PaymentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle,
              size: 60.0, color: Colors.deepPurpleAccent),
          const SizedBox(height: 15.0),
          const CustomTextWidget(
              text: 'Payment Successful!', fontWeight: FontWeight.w400),
          const SizedBox(height: 15.0),
          const CustomTextWidget(
            text:
                'Your order will be processed and sent to \nyou as soon as possible',
            textAlign: TextAlign.center,
            fontSize: 14.0,
          ),
          const SizedBox(height: 30.0),
          CustomButtonWidget(
            buttonText: 'Continue Shopping',
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainScreen())),
          ),
        ],
      ),
    );
  }
}
