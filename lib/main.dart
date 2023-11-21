import 'package:ecolecta/screens/auth/auth.dart';
import 'package:ecolecta/screens/main_app.dart';
import 'package:ecolecta/screens/other/scan_result.dart';
import 'package:ecolecta/screens/quick_acces/about_materials.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecolecta',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.green),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const Auth(),
        '/home': (context) => const Home(),
        '/about_materials': (context) => const AboutMaterials(),
        '/scan_result': (context) => const ScanResult(),
      },
    );
  }
}
