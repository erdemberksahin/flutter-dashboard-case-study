import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/routes/app_router.dart';

void main() {
  runApp(const MagloApp());
}

class MagloApp extends StatelessWidget {
  const MagloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Maglo Finans',
      theme: AppTheme.light,
      routerConfig: AppRouter.router,
    );
  }
}
