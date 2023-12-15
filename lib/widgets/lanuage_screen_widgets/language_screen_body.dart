import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/shared/custom_list_tile.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class LanguageScreenBody extends StatelessWidget {
  const LanguageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            CustomTextWidget(
                text: 'Select a Language',
                fontSize: 13.0,
                color: Colors.grey.shade600),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 500.0,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 3.0),
                  child: CustomListTile(
                    withoutSubtitle: true,
                    withoutTrailing: true,
                    leading: Icon(Icons.flag),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
