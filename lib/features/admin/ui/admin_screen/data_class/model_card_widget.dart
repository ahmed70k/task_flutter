import 'package:task_flutter/features/admin/ui/admin_screen/screens_apis/accounts_screen/accounts_screen.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/screens_apis/maintenance_screen/maintenance_screen.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/screens_apis/residents_screen/residents_screen.dart';
import 'package:task_flutter/features/admin/ui/admin_screen/screens_apis/units_screen/units_screen.dart';

class ModelCardWidget<T> {
  final T valueNumber; // 70
  String? title; // total
  String? trendLabel; // count %
  String routeName;
  ModelCardWidget({
    required this.valueNumber,
    required this.title,
    required this.trendLabel,
  required this.routeName
  });

  static var totalUnitsCard = ModelCardWidget<int>(
    valueNumber: 177,
    title: "UnitsALL",
    trendLabel: "10%",
    routeName: UnitsScreen.routeName
  );
  static var residentsCard = ModelCardWidget<int>(
    valueNumber: 33,
    title: "UnitsALL",
    trendLabel: "10%",
      routeName: ResidentsScreen.routeName
  );
  static var accountsCard = ModelCardWidget<int>(
    valueNumber: 87,
    title: "UnitsALL",
    trendLabel: "10%",
      routeName:AccountsScreen.routeName
  );
  static var maintenanceCard = ModelCardWidget<int>(
    valueNumber: 112,
    title: "UnitsALL",
    trendLabel: "10%",
      routeName: MaintenanceScreen.routeName
  );
}
