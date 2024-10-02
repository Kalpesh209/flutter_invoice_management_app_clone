import 'package:flutter_invoice_management_app_clone/Models/tab_model.dart';
import 'package:flutter/material.dart';

class TabControllers {
  final drawer = [
    TabModel('Home', Icons.home),
    TabModel('Invoice', Icons.receipt_long),
    TabModel('Payment', Icons.account_balance),
    TabModel('Settings', Icons.settings),
  ];
}
