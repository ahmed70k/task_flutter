import 'package:flutter/material.dart';
import 'package:task_flutter/core/theme/app_styles/app_styles.dart';

import '../../theme/app_colors/app_colors.dart';

class CustomTextForm extends StatelessWidget {
  final Widget? prefixIcon ;
  final Widget? suffixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  String? Function(String?)? validator;
  CustomTextForm({super.key,this.prefixIcon,
    this.suffixIcon,
    this.hintText,this.hintStyle,this.validator,});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorErrorColor: AppColors.black, /// | => in case error
      validator: validator,
      cursorColor: AppColors.black, /// | => in case success
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white2,
        suffixIconColor: AppColors.primary,
        suffixIcon: suffixIcon,
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.transparent,),
          borderRadius: BorderRadius.all(Radius.circular(50,)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        errorStyle: AppStyles.semiBoldReed12

      ),
    );
  }
}
