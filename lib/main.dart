import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_qr/config/routes/app_routes.dart';
import 'package:quick_qr/app/theme/app_theme.dart';
import 'package:quick_qr/core/constants/app_constants.dart';

import 'features/qr/bloc/empty_qr/empty_qr_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (ctx)=> EmptyQrQubit())
    ], child: MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routerConfig: AppRoutes.router,
    ));
  }
}
