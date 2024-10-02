import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Screens/invoice_customer/add_customer_field.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddCustomerState createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        tooltip: 'Save',
        onPressed: () {},
        child: const Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            const TextBuilderWidget(
              text: 'Add Customer',
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 20.0),
            const TextBuilderWidget(text: 'BASIC INFO'),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: TextBuilderWidget(text: 'Logo'),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextBuilderWidget(
                        text: 'Zomoto',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                      TextBuilderWidget(text: 'Gurgaon, Haryana, INDIA'),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.keyboard_arrow_right),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddCustomerField(
                    maxLine: 1,
                    inputType: TextInputType.name,
                    customerLabelText: "Customer Name",
                    customerHintText: 'Enter customer name',
                  ),
                  AddCustomerField(
                    maxLine: 1,
                    inputType: TextInputType.number,
                    customerLabelText: "Customer Phone",
                    customerHintText: 'Enter Phone',
                  ),
                  AddCustomerField(
                    maxLine: 1,
                    inputType: TextInputType.emailAddress,
                    customerLabelText: "Customer Email ID",
                    customerHintText: 'Enter Email ID',
                  ),
                  AddCustomerField(
                    maxLine: 3,
                    inputType: TextInputType.multiline,
                    customerLabelText: "Customer Address",
                    customerHintText: 'Enter customer address',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
