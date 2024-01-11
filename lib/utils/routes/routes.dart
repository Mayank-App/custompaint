import 'package:custompaint_assignment/utils/routes/routes_name.dart';
import 'package:custompaint_assignment/view/customPaintTask.dart';
import 'package:custompaint_assignment/view/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/orderDetailScreen/orderDetailScreen.dart';
class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());
      case RoutesName.orderDetailScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => OrderDetailScreen());
      case RoutesName.customPaintTaskScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => CustomPaintTask());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No routes are there"),
            ),
          );
        });
    }
  }
}
