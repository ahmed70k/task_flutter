import 'package:flutter/material.dart';

import '../../../../core/theme/app_styles/app_styles.dart';
import '../../../../core/widgets/custom_text_form/custom_text_form.dart';

class FormColumn extends StatelessWidget {
  var formKey;
   FormColumn  ({super.key,required this.formKey});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return   Form(
    key: formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    CustomTextForm(
    hintText: "Enter your email,",
    hintStyle: AppStyles.semiBoldPrimary12,
    validator: (newText) {
    if (newText == null || newText.isEmpty) {
    return "Please Enter Name"; // inValid
    }
    return null; // valid
    },
    ),
    SizedBox(height: height * 0.02),
    CustomTextForm(
    suffixIcon: Icon(Icons.visibility),
    hintText: "Enter your password",
    hintStyle: AppStyles.semiBoldPrimary12,
    validator: (newText) {
    if (newText == null || newText.isEmpty) {
    return "Enter your password"; // inValid
    }
    return null; // valid
    },
  ),
  SizedBox(height: height * 0.03),
  Text(
  "Forgot Password?",
  style: AppStyles.semiBoldSecondary12,
  ),
  SizedBox(height: height * 0.03),
  ],
  ),
  );
  }
}
