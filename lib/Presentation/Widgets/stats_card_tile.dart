import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_invoice_management_app_clone/Business/dashboard_controller.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class StatsCardTile extends StatelessWidget {
  final DashboardController? data;
  final int? index;
  const StatsCardTile({
    Key? key,
    this.index,
    this.data,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.dashColor[index!],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(data!.dashboardList[index!].icon,
                    color: Colors.white, size: 40),
                TextBuilderWidget(
                    text: data!.dashboardList[index!].value!,
                    fontSize: 17.0,
                    color: Colors.white),
              ],
            ),
            TextBuilderWidget(
              text: data!.dashboardList[index!].title!,
              textOverflow: TextOverflow.clip,
              fontSize: 20.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
