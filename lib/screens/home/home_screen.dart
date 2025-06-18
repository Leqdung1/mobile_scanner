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
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  final List<Widget> _screens = [
    GenerateQrScreen(),
    ScanQrScreen(),
    HistoryScreen(),
  ];

  void _onTabSelected(int index) {
    _selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _selectedIndex,
        builder: (context, value, child) {
          return IndexedStack(index: value, children: _screens);
        },
      ),
      bottomNavigationBar: SafeArea(
        child: BottomBar(
          selectedIndex: _selectedIndex.value,
          onTabSelected: _onTabSelected,
        ),
      ),
    );
  }
}
