import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Models/payment_model.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class PaymentCardTileWidget extends StatelessWidget {
  final PaymentModel? data;
  final Function()? onTap;

  const PaymentCardTileWidget({
    Key? key,
    this.data,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: TextBuilderWidget(
        text: data!.userName,
        fontSize: 18.0,
        color: Colors.black,
      ),
      subtitle: TextBuilderWidget(
        text: '₹ ${data!.date}',
        fontSize: 12,
      ),
      trailing: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(data!.avatar!),
      ),
    );
  }
}
