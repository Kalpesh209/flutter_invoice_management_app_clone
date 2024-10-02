import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Business/payment_controller.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/payment_card_tile.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<StatefulWidget> createState() => PieChartPageState();
}

class PieChartPageState extends State {
  final pay = PaymentController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          shrinkWrap: true,
          itemCount: pay.paymentList.length,
          itemBuilder: (BuildContext context, int i) {
            return PaymentCardTileWidget(
              data: pay.paymentList[i],
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
