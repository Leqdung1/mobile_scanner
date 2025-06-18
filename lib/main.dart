import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/generate_qr/generate_qr_screen.dart';
import 'package:qr_scanner/screens/history/history_screen.dart';
import 'package:qr_scanner/screens/home/home_screen.dart';
import 'package:qr_scanner/screens/scan_qr/scan_qr_screen.dart';
import 'package:qr_scanner/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Scanner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/scan': (context) => const ScanQrScreen(),
        '/generate': (context) => const GenerateQrScreen(),
        '/history': (context) => const HistoryScreen(),
      },
    );
  }
}
