import 'package:flutter/material.dart';
import 'package:product_screen_ui/helpers/dio_helper/dio_helper.dart';
import 'package:product_screen_ui/models/product_model.dart';
import 'package:product_screen_ui/widgets/category_title_row.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class FeaturedBestCategoriesView extends StatelessWidget {
  final String title;

  const FeaturedBestCategoriesView({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DioHelper.dio.get("https://api.escuelajs.co/api/v1/products"),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: SizedBox(
                  height: 10.0,
                  width: 10.0,
                  child: CircularProgressIndicator()));
        } else if (snapshot.hasData && snapshot.data!.statusCode == 200) {
          List<ProductModel> products = [];
          for (var element in snapshot.data!.data) {
            products.add(ProductModel.fromJson(element));
          }
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomTitleRow(title: title),
                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      String imageUrl = products[index].images != null &&
                          products[index].images!.isNotEmpty
                          ? products[index].images!.first
                          : 'default_image_url';

                      return SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: 160.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                          child: Image.network(imageUrl,
                                              fit: BoxFit.fill)),
                                      const Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Material(
                                          elevation: 10.0,
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(8.0),
                                          ),
                                          child: Icon(Icons.favorite_border,
                                              color: Colors.deepPurpleAccent),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                products[index].category?.name ?? '',
                                style: const TextStyle(fontSize: 14.0),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              CustomTextWidget(
                                text: '${products[index].price}',
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
