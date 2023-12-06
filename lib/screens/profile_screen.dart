import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/custom_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0.0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
                height: 100.0,
                width: 100.0,
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/150'),
                  backgroundColor: Colors.transparent,
                )),
            const SizedBox(height: 10.0),
            const Text('John Doe'),
            const SizedBox(height: 10.0),
            Expanded(
                child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.all(5.0),
                child: CustomListTile(
                  borderRadius: 10.0,
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  withoutSubtitle: true,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
