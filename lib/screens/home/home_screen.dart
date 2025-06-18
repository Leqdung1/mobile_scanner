import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/home/widgets/bottom_bar.dart';
import 'package:qr_scanner/screens/generate_qr/generate_qr_screen.dart';
import 'package:qr_scanner/screens/history/history_screen.dart';
import 'package:qr_scanner/screens/scan_qr/scan_qr_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    GenerateQrScreen(),
    ScanQrScreen(),
    HistoryScreen(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(index: _selectedIndex, children: _screens),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              child: BottomBar(
                selectedIndex: _selectedIndex,
                onTabSelected: _onTabSelected,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
