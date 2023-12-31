import 'package:flutter/material.dart';
import 'package:product_screen_ui/helpers/dio_helper/dio_helper.dart';
import 'package:product_screen_ui/models/category_model.dart';

class SpecialForYouCard extends StatelessWidget {
  final double? width;
  final int index;

  const SpecialForYouCard({Key? key, this.width, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DioHelper.dio.get("https://api.escuelajs.co/api/v1/categories"),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: SizedBox(
                  height: 10.0,
                  width: 10.0,
                  child: CircularProgressIndicator()));
        } else if (snapshot.hasData && snapshot.data!.statusCode == 200) {
          List<CategoryModel> categories = [];
          for (var element in snapshot.data!.data) {
            categories.add(CategoryModel.fromJson(element));
          }
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6.0),
            width: width ?? 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: NetworkImage(categories[index].image),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categories[index].name,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(child: Text('ERROR'));
        }
      },
    );
  }
}
