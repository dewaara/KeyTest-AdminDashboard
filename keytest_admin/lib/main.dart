import 'package:flutter/material.dart';
import 'package:keytest_admin/defaultColors/default_colors.dart';
import 'package:keytest_admin/routes_web_pages.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app/config/routes/app_pages.dart';
import 'app/config/themes/app_theme.dart';

import 'app/config/routes/app_pages.dart';
import 'app/config/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


String firstRoute = "/";



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

final ThemeData defaultThemeOfWebApp = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: DefaultColors.primaryColor),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     debugShowCheckedModeBanner: false,
  //     initialRoute: firstRoute,
  //     onGenerateRoute: RoutesForWebPages.createRountes,
  //   );
  // }

  ///////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KeyTest_Project',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.basic,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }

}

