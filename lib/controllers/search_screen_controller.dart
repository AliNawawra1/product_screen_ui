import 'package:flutter/material.dart';
import 'package:product_screen_ui/helpers/dio_helper/dio_helper.dart';
import 'package:product_screen_ui/models/product_model.dart';

class SearchScreenController {
  List<ProductModel> products = [];
  List<ProductModel> filteredProducts = [];
  Function()? onUpdate;

  /// Callback to trigger UI updates (setState(() {}))

  SearchScreenController({this.onUpdate});

  Future<void> loadProducts() async {
    await _fetchProducts("https://api.escuelajs.co/api/v1/products");
  }

  Future<void> _fetchProducts(String url) async {
    try {
      var response = await DioHelper.dio.get(url);
      if (response.statusCode == 200) {
        products = List<ProductModel>.from(
            response.data.map((item) => ProductModel.fromJson(item)));
        filteredProducts = products;

        onUpdate?.call();
      }
    } catch (e) {
      print("Error fetching products: $e");
    }
  }

  Future<void> searchProduct(String query) async {
    if (query.isEmpty) {
      filteredProducts = products;
    } else {
      try {
        int price = int.parse(query);
        searchByPrice(price);
      } catch (e) {
        await _fetchProducts(
            "https://api.escuelajs.co/api/v1/products/?title=$query");
      }
    }

    onUpdate?.call();
  }

  void searchByPrice(int price) {
    filteredProducts =
        products.where((product) => product.price == price).toList();
  }

  void filterByPriceRange(int minPrice, int maxPrice) {
    filteredProducts = products
        .where((product) =>
            product.price! >= minPrice && product.price! <= maxPrice)
        .toList();
  }

  Future<void> searchByCategory(String categoryId) async {
    await _fetchProducts(
        "https://api.escuelajs.co/api/v1/products/?categoryId=$categoryId");
  }

  Future<void> showPriceFilterDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) => _createPriceFilterDialog(context),
    );
  }

  Widget _createPriceFilterDialog(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController minPriceController = TextEditingController();
    TextEditingController maxPriceController = TextEditingController();

    return AlertDialog(
      title: const Text('Filter by Price Range'),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _createPriceField(minPriceController, "Minimum Price"),
            _createPriceField(maxPriceController, "Maximum Price"),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Filter'),
          onPressed: () => _handlePriceFilter(
              context, formKey, minPriceController, maxPriceController),
        )
      ],
    );
  }

  TextFormField _createPriceField(
      TextEditingController controller, String hintText) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        return null;
      },
    );
  }

  void _handlePriceFilter(
      BuildContext context,
      GlobalKey<FormState> formKey,
      TextEditingController minController,
      TextEditingController maxController) async {
    if (formKey.currentState?.validate() ?? false) {
      int minPrice = int.parse(minController.text);
      int maxPrice = int.parse(maxController.text);
      filterByPriceRange(minPrice, maxPrice);
      Navigator.of(context).pop();

      onUpdate?.call();
    }
  }

  Future<void> showCategoryFilterDialog(BuildContext context) async {
    final TextEditingController categoryController = TextEditingController();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) =>
          _createCategoryFilterDialog(context, categoryController),
    );
  }

  Widget _createCategoryFilterDialog(
      BuildContext context, TextEditingController controller) {
    return AlertDialog(
      title: const Text('Enter Category ID'),
      content: TextFormField(
        controller: controller,
        decoration: const InputDecoration(hintText: "Category ID"),
        keyboardType: TextInputType.number,
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Filter'),
          onPressed: () => _handleCategoryFilter(context, controller),
        )
      ],
    );
  }

  void _handleCategoryFilter(
      BuildContext context, TextEditingController controller) async {
    if (controller.text.isNotEmpty) {
      await searchByCategory(controller.text);
      Navigator.of(context).pop();
    }
  }
}
