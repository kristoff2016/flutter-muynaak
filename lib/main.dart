import 'package:flutter/material.dart';
import 'package:muynaak/features/login/screen/login_screen.dart';
import 'package:muynaak/routes/router.dart';
import 'package:muynaak/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MuyNaak',
      theme: appTheme,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/',
    );
  }
}
