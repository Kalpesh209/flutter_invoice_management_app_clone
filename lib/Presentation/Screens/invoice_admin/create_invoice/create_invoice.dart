import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/custom_text_filed.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/fab_cta.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class CreateInvoiceTemplate extends StatelessWidget {
  const CreateInvoiceTemplate({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: const TextBuilderWidget(
          text: 'Create Invoice',
          color: Colors.black,
        ),
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 15),
              child: TextBuilderWidget(
                text: '001',
                fontSize: 15.0,
                color: Colors.black38,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            const TextBuilderWidget(text: '# Customer Details', fontSize: 18.0),
            const SizedBox(height: 20.0),
            const CustomTextFieldWidget(
              label: 'Phone Number',
              prefixIcon: Icon(
                Icons.phone,
                size: 25,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15.0),
            const CustomTextFieldWidget(
              label: 'Customer Name',
              prefixIcon: Icon(
                Icons.person,
                size: 25,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15.0),
            const CustomTextFieldWidget(
              label: 'Customer GST Number',
              prefixIcon: Icon(
                Icons.numbers,
                size: 25,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20.0),
            const TextBuilderWidget(text: 'Product Details', fontSize: 20.0),
            const SizedBox(height: 5.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextBuilderWidget(
                    text: 'Product Name',
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(width: 30.0),
                Expanded(
                  child: TextBuilderWidget(
                    text: 'Computer Parts',
                    fontSize: 12.0,
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextBuilderWidget(
                    text: 'Product Price',
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(width: 30.0),
                Expanded(
                  child: TextBuilderWidget(
                    text: '20 X 30',
                    fontSize: 12.0,
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextBuilderWidget(
                    text: 'Product Quantity',
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(width: 30.0),
                Expanded(
                  child: TextBuilderWidget(
                    text: '20 Unit',
                    fontSize: 12.0,
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextBuilderWidget(text: 'Total', fontSize: 20.0),
                TextBuilderWidget(text: '₹ 400.00', fontSize: 20.0),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FabCTA(
                  title: 'Add Items',
                  icon: Icons.add,
                  onTap: () {},
                ),
                FabCTA(
                  title: 'Preview',
                  icon: Icons.visibility,
                  onTap: () {},
                ),
                FabCTA(
                  title: 'Create Invoice',
                  icon: Icons.picture_as_pdf,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
