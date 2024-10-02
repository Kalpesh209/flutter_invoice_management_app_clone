import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Business/product_list_controller.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/custom_text_filed.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class ProductHome extends StatelessWidget {
  final product = ProductListController();

  ProductHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const TextBuilderWidget(
          text: 'Product List',
          color: Colors.black,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          productBottomSheet(context);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: product.list.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  title: TextBuilderWidget(
                    text: product.list[i].title,
                    fontSize: 18.0,
                  ),
                  subtitle: TextBuilderWidget(
                    text: 'Quantity: ${product.list[i].subTitle}',
                    fontSize: 12,
                  ),
                  trailing: CircleAvatar(
                    maxRadius: 40.0,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(product.list[i].trailing!),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void productBottomSheet(BuildContext context) {
  showModalBottomSheet<dynamic>(
    isScrollControlled: true,
    enableDrag: true,
    isDismissible: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
    ),
    context: context,
    builder: (ctx) {
      return SafeArea(
        child: Container(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const TextBuilderWidget(
                    text: 'Add Product',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                const SizedBox(height: 20.0),
                const CustomTextFieldWidget(
                  label: 'Product Name',
                  prefixIcon: Icon(
                    Icons.add_shopping_cart,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15.0),
                const CustomTextFieldWidget(
                  label: 'Price',
                  prefixIcon: Icon(
                    Icons.attach_money,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15.0),
                const CustomTextFieldWidget(
                  label: 'Quantity',
                  prefixIcon: Icon(
                    Icons.leaderboard,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30.0),
                MaterialButton(
                  height: 50,
                  textColor: Colors.white,
                  color: Colors.black,
                  minWidth: double.infinity,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: TextBuilderWidget(
                    text: 'Add'.toUpperCase(),
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
