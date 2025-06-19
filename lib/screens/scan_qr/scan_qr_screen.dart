import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_scanner/screens/scan_qr/widgets/scan_app_bar.dart';
import 'package:qr_scanner/screens/scan_qr/widgets/scan_slider.dart';

class ScanQrScreen extends StatelessWidget {
  const ScanQrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MobileScanner(),
          Column(
            children: [
              const SizedBox(height: 50),
              const ScanAppBar(),
              const SizedBox(height: 500),
              const ScanSlider(),
            ],
          ),
        ],
      ),
    );
  }
}
