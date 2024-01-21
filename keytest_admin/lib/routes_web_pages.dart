import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keytest_admin/app/features/dashboard/views/screens/dashboard_screen.dart';
import 'package:keytest_admin/webPages/home_page.dart';
import 'package:keytest_admin/webPages/login_page.dart';


class RoutesForWebPages {
  static Route<dynamic> createRountes(RouteSettings settingsRoute) {
    final arguments = settingsRoute.arguments;
    switch (settingsRoute.name) {
      case "/":
        return MaterialPageRoute(builder: (c) => const LoginPage());
      case "/login":
        return MaterialPageRoute(builder: (c) => const LoginPage());
      case "/dashboard":
        return MaterialPageRoute(builder: (c) => const DashboardScreen());
      case "/home":
        return MaterialPageRoute(builder: (c) => const HomePage());
    }
    return errorPageRoute();
  }

  static Route<dynamic> errorPageRoute() {
    return MaterialPageRoute(builder: (c)
    {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Web Page not found."),
        ),
        body: const Center(
          child: Text("Web Page not found."),
        ),
      );
    });
  }

}