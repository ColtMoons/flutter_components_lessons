import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Components',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),

      theme: AppTheme.lightTheme,
      //routing for generated routes that does not exist
      onGenerateRoute: AppRoutes.onGenerateRoute, 
    );
  }
}
