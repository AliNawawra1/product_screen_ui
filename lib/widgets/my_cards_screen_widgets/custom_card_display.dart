import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

  class CustomCardDisplay extends StatelessWidget {
  final String cardNumber;
  final String expiryDate;
  final IconData icon;
  final Color containerColor;

  const CustomCardDisplay({
    Key? key,
    required this.cardNumber,
    required this.expiryDate,
    required this.icon,
    this.containerColor = Colors.black87, // Default color is black87
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextWidget(
                  text: 'Bank Name', color: Colors.white, fontSize: 14.0),
              const SizedBox(height: 40.0),
              CustomTextWidget(
                  text: cardNumber, color: Colors.white, fontSize: 18.0),
              const SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget(
                      text: expiryDate, color: Colors.white, fontSize: 13.0)
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomTextWidget(
                      text: 'CARD HOLDER', color: Colors.white, fontSize: 12.0),
                  Icon(icon, color: Colors.white)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
