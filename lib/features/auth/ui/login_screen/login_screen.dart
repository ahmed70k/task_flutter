import 'package:flutter/material.dart';
import 'package:task_flutter/core/theme/app_assets/app_assets.dart';
import 'package:task_flutter/core/theme/app_styles/app_styles.dart';
import '../../../../core/theme/app_colors/app_colors.dart';
import 'form_column.dart';
import 'login_button.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LoginScreen";
  LoginScreen({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.backgroundImage,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 200,horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.1),
                Text(
                  "Welcome back! Glad to see you, Again!",
                  style: AppStyles.semiBoldSecondary24,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: height * 0.04),
                FormColumn(formKey: formKey),
                LoginButton(formKey: formKey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
