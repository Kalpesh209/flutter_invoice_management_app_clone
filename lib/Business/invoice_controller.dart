import 'package:flutter_invoice_management_app_clone/AppUtils/app_images.dart';
import 'package:flutter_invoice_management_app_clone/Models/invoice_model.dart';

class InvoiceController {
  final invoice = [
    InvoiceModel(
      userName: 'Petey Cruiser',
      amount: '121',
      invoiceURL: AppImages.invoiceTemplate,
    ),
    InvoiceModel(
      userName: 'Anna Thesia',
      amount: '5475',
      invoiceURL: AppImages.invoiceTemplate,
    ),
    InvoiceModel(
      userName: 'Paul Molive',
      amount: '846',
      invoiceURL: AppImages.invoiceTemplate,
    )
  ];
}
