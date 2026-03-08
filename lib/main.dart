import 'package:flutter/material.dart';
import 'package:quick_qr/config/routes/app_routes.dart';
import 'package:quick_qr/app/theme/app_theme.dart';
import 'package:quick_qr/core/constants/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routerConfig: AppRoutes.router,
    );
  }
}
