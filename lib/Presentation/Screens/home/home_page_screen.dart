import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Business/dashboard_controller.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Screens/invoice_admin/create_invoice/create_invoice.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/stats_card_tile.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePageScreen> {
  // final pay = PaymentController();
  final dash = DashboardController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 1.6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemCount: dash.dashboardList.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return StatsCardTile(data: dash, index: index);
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CreateInvoiceTemplate()),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
