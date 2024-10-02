import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Business/invoice_controller.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/invoice_card_tile.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  final invoice = InvoiceController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          shrinkWrap: true,
          itemCount: invoice.invoice.length,
          itemBuilder: (BuildContext context, int i) {
            return InvoiceCardTileWidget(
              data: invoice.invoice[i],
            );
          },
        ),
      ),
    );
  }
}
