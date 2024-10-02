import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Models/settings_model.dart';

class SettingsController {
  final list = [
    SettingsModel(
      title: 'Employee List',
      icon: Icons.people,
      bgColor: Colors.white,
      textColor: const Color.fromARGB(255, 2, 1, 1),
    ),
    SettingsModel(
      title: 'Product List',
      icon: Icons.list,
      bgColor: Colors.white,
      textColor: Colors.black,
    ),
    SettingsModel(
      title: 'Add GST Number',
      icon: Icons.numbers,
      bgColor: Colors.white,
      textColor: Colors.black,
    ),
    SettingsModel(
      title: 'Log out',
      icon: Icons.logout,
      bgColor: Colors.black,
      textColor: Colors.white,
    ),
  ];
}
