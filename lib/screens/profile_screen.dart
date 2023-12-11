import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/profile_screen_widgets/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0.0),
      body: const ProfileScreenBody(),
    );
  }
}
