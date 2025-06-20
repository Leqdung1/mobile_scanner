import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/screens/scan_qr/widgets/scan_app_bar.dart';
import 'package:qr_scanner/screens/scan_qr/widgets/scan_slider.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';

class ScanQrScreen extends StatelessWidget {
  const ScanQrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MobileScanner(),
          QRScannerOverlay(
            overlayColor: Colors.black.withOpacity(0.5),
            scanAreaHeight: 300,
            scanAreaWidth: 300,
            borderColor: AppThemeConst.primaryColor,
            borderStrokeWidth: 5,
            borderRadius: 12,
          ),
          Column(
            children: [
              const SizedBox(height: 50),
              const ScanAppBar(),
              const SizedBox(height: 520),
              const ScanSlider(),
            ],
          ),
        ],
      ),
    );
  }
}
