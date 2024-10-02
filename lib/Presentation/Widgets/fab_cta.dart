import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class FabCTA extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Function()? onTap;
  const FabCTA({Key? key, this.title, this.onTap, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          TextBuilderWidget(text: title),
        ],
      ),
    );
  }
}
