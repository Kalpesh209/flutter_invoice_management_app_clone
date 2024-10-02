import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Models/invoice_model.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class InvoiceCardTileWidget extends StatelessWidget {
  final InvoiceModel data;
  const InvoiceCardTileWidget({
    super.key,
    required this.data,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListTile(
      onTap: () {
        showDialog(
          context: context,
          useSafeArea: true,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              actionsPadding: EdgeInsets.zero,
              buttonPadding: EdgeInsets.zero,
              contentPadding: const EdgeInsets.all(8),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextBuilderWidget(text: 'Invoice'),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              content: InteractiveViewer(
                minScale: 0.1,
                maxScale: 1.9,
                child: Image.asset(
                  data.invoiceURL!,
                  height: size.height * 0.5,
                  width: size.width,
                ),
              ),
            );
          },
        );
      },
      title: TextBuilderWidget(
          text: data.userName, fontSize: 18.0, color: Colors.black),
      subtitle: TextBuilderWidget(text: '₹ ${data.amount}', fontSize: 12),
      trailing: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(data.invoiceURL!),
      ),
    );
  }
}
