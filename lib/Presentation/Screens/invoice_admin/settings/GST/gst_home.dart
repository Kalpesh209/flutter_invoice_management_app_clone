import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Business/gst_list_controller.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/custom_text_filed.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class GSTHome extends StatefulWidget {
  const GSTHome({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GSTHomeState createState() => _GSTHomeState();
}

class _GSTHomeState extends State<GSTHome> {
  final gst = GSTListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const TextBuilderWidget(
          text: 'GST Number List',
          color: Colors.black,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          displayBottomSheet(context);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: gst.list.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  title: TextBuilderWidget(
                    text: gst.list[i].title,
                    fontSize: 18.0,
                  ),
                  subtitle: TextBuilderWidget(
                    text: gst.list[i].subTitle,
                    fontSize: 12,
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

void displayBottomSheet(BuildContext context) {
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
                    text: 'Add GST',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                const SizedBox(height: 20.0),
                const CustomTextFieldWidget(
                  label: 'GST Number',
                  prefixIcon: Icon(
                    Icons.receipt_long,
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
