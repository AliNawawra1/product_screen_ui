import 'package:flutter/material.dart';
import 'package:product_screen_ui/controllers/search_screen_controller.dart';
import 'package:product_screen_ui/widgets/app_bar_actions.dart';
import 'package:product_screen_ui/widgets/shared/custom_app_bar.dart';
import 'package:product_screen_ui/widgets/shared/custom_list_tile.dart';
import 'package:product_screen_ui/widgets/shared/product_search_bar.dart';

class SearchScreen extends StatefulWidget {
  final bool isWishList;
  final String title;

  const SearchScreen(
      {super.key, this.isWishList = false, this.title = 'Search'});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late SearchScreenController controller;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller = SearchScreenController(onUpdate: () => setState(() {}));
    controller.loadProducts().then((_) => setState(() {}));
  }

  void handleSearch(String query) {
    controller.searchProduct(query);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(titleText: widget.title),
      body: _searchScreenBody(context),
    );
  }

  Padding _searchScreenBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          widget.isWishList
              ? ProductSearchBar(
                  width: double.infinity, onSearchChanged: handleSearch)
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductSearchBar(
                        searchController: _searchController,
                        width: 260.0,
                        onSearchChanged: handleSearch),
                    const CustomMaterialButton(
                        icon: Icons.filter, elevation: 3.0),
                  ],
                ),
          const SizedBox(height: 15.0),
          widget.isWishList
              ? const SizedBox()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent),
                      child: const Text('Filter by Price'),
                      onPressed: () async {
                        await controller.showPriceFilterDialog(context);
                        setState(() {});
                      },
                    ),
                    ElevatedButton(
                      child: const Text('Filter by Category'),
                      onPressed: () async {
                        await controller.showCategoryFilterDialog(context);
                        setState(() {});
                      },
                    ),
                  ],
                ),
          const SizedBox(height: 15.0),
          productsListView(),
        ],
      ),
    );
  }

  Expanded productsListView() {
    return Expanded(
      child: ListView.builder(
        itemCount: controller.filteredProducts.length,
        itemBuilder: (context, index) {
          if (index < controller.filteredProducts.length) {
            var product = controller.filteredProducts[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomListTile(
                title: Text(product.title ?? ''),
                subtitle: Text('${product.price}'),
                leading: Image.network(
                    product.images?.first ?? 'https://via.placeholder.com/150'),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
