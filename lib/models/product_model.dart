import 'package:product_screen_ui/models/category_model.dart';

class ProductModel {
  final int id;
  final String? title;
  final int? price;
  final String? description;
  final CategoryModel? category;
  final List<String>? images;

  ProductModel({
    required this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'] != null
          ? CategoryModel.fromJson(json['category'])
          : null,
      images: (json['images'] as List<dynamic>?)
              ?.map((x) => x as String)
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category?.toJson(),
      'images': images,
    };
  }
}
