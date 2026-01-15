import 'package:flutter/material.dart';
import 'package:task_flutter/features/auth/ui/login_screen/login_screen.dart';
import 'package:task_flutter/features/auth/ui/register_screen/register_screen.dart';

import 'features/admin/ui/admin_screen/admin_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName:(_)=>LoginScreen(),
        RegisterScreen.routeName:(_)=>RegisterScreen(),
        AdminScreen.routeName:(_)=>AdminScreen(),

      }
    );
  }
}
