import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:annova/providers/app_state.dart';
import 'package:annova/screens/splash_screen.dart';
import 'package:annova/utils/app_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const AnnovaApp(),
    ),
  );
}

class AnnovaApp extends StatelessWidget {
  const AnnovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Annova',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}
