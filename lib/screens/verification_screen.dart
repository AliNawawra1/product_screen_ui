import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/shared/custom_button_widget.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30.0),
            const Text(
              "Verification",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            const Text("Please enter the OTP code sent to you by SMS",
                style: TextStyle(fontSize: 17.0)),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Container(
                  width: 45.0,
                  height: 55.0,
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "-", // Placeholder text for OTP
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn\'t get a code?',
                    style: TextStyle(color: Colors.grey[700], fontSize: 17.0)),
                const SizedBox(width: 3.0),
                const Text(
                  'Send again',
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 17.0),
                )
              ],
            ),
            const Spacer(),
            const CustomButtonWidget(buttonText: 'Verify'),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
