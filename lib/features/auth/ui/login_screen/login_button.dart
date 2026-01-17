import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors/app_colors.dart';
import '../../../../core/theme/app_styles/app_styles.dart';

class LoginButton extends StatelessWidget {
  var formKey;
   LoginButton({super.key,required this.formKey});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState?.validate() == true) {}
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        minimumSize: Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
      ),
      child: Center(
        child: Text("Login", style: AppStyles.semiBoldWhite18),
      ),
    );
  }
}
