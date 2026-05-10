import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const ArgentLiveApp());
}

class ArgentLiveApp extends StatelessWidget {
  const ArgentLiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Argent Live',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}