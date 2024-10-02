import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Models/settings_model.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class SettingsCard extends StatelessWidget {
  final SettingsModel? data;
  final Function()? onTap;
  const SettingsCard({
    Key? key,
    this.data,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: data!.bgColor!,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            height: 60,
            child: Row(
              children: [
                const SizedBox(width: 20.0),
                Icon(
                  data!.icon!,
                  size: 25,
                  color: data!.textColor,
                ),
                const SizedBox(width: 20.0),
                TextBuilderWidget(
                  text: data!.title,
                  fontSize: 20.0,
                  color: data!.textColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
