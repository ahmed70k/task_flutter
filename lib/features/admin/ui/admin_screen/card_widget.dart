import 'package:flutter/material.dart';
import 'package:task_flutter/core/theme/app_styles/app_styles.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/data_class/model_card_widget.dart';
import '../../../../core/theme/app_colors/app_colors.dart';

class CardWidget<int> extends StatelessWidget {
   const CardWidget({super.key, this.modelCardWidget,});
  final ModelCardWidget<int>? modelCardWidget;
  // List<Widget> screensApis = [];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: SizedBox(
        height: height * 0.2,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context,modelCardWidget!.routeName );
            return;
          },
          child: Card(
            margin: EdgeInsets.zero,
            color: AppColors.cardColor,
            shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    modelCardWidget!.valueNumber.toString(),
                    style: AppStyles.semiBoldSecondary24,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    modelCardWidget?.title ?? "",
                    style: AppStyles.semiBoldSecondary16,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    modelCardWidget?.trendLabel ?? "",
                    style: AppStyles.semiBoldSecondary16,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
