import 'package:flutter/material.dart';
import 'package:task_flutter/core/theme/app_assets/app_assets.dart';
import 'package:task_flutter/core/theme/app_styles/app_styles.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/card_widget.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/data_class/model_card_widget.dart';

class AdminScreen extends StatelessWidget {
  static const String routeName = "AdminScreen";
  const AdminScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.backgroundImage,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 16),
            child: Column(
              children: [
                Text(
                  "Welcome To Your dashboard, Metricon Homes!",
                  style: AppStyles.semiBoldSecondary24,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    CardWidget(modelCardWidget: ModelCardWidget.totalUnitsCard,),
                    SizedBox(width: 16),
                    CardWidget(modelCardWidget: ModelCardWidget.accountsCard),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    CardWidget(
                      modelCardWidget: ModelCardWidget.maintenanceCard,
                    ),
                    SizedBox(width: 16),
                    CardWidget(modelCardWidget: ModelCardWidget.residentsCard),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
