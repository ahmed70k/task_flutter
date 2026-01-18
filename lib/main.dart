import 'package:flutter/material.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/screens_apis/accounts_screen/accounts_screen.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/screens_apis/maintenance_screen/maintenance_screen.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/screens_apis/residents_screen/residents_screen.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/screens_apis/units_screen/units_screen.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        AdminScreen.routeName: (_) => AdminScreen(),
        UnitsScreen.routeName: (_) => UnitsScreen(),
        ResidentsScreen.routeName: (_) => ResidentsScreen(),
        MaintenanceScreen.routeName: (_) => MaintenanceScreen(),
        AccountsScreen.routeName: (_) => AccountsScreen(),
      },
    );
  }
}
