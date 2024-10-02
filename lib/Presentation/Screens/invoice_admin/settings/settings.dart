import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Business/settings_controller.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Screens/init_screen/splash_screen.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Screens/invoice_admin/settings/GST/gst_home.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Screens/invoice_admin/settings/employee/employee.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Screens/invoice_admin/settings/product/product_home.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/settings_card.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final settings = SettingsController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: settings.list.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, i) {
            return SettingsCard(
              data: settings.list[i],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      switch (i) {
                        case 0:
                          return Employee();
                        case 1:
                          return ProductHome();
                        case 2:
                          return const GSTHome();
                        default:
                          return const SplashScreen();
                      }
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
