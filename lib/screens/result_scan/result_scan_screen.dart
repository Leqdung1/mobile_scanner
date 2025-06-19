import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/constants/asset_path_const.dart';
import 'package:qr_scanner/screens/result_scan/widgets/quick_action_button.dart';
import 'package:qr_scanner/screens/result_scan/widgets/result_app_bar.dart';
import 'package:qr_scanner/screens/result_scan/widgets/result_card.dart';

class ResultScanScreen extends StatelessWidget {
  const ResultScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeConst.backgroundColor.withOpacity(0.84),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetPathConst.imgBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ------------------------- AppBar ------------------------- //
              const ResultAppBar(),
              const SizedBox(height: 39),
              // ------------------------- Card ------------------------- //
              const ResultCard(),
              const SizedBox(height: 42),
              // ------------------------- Quick Action Button ------------------------- //
              const QuickActionButton(),
            ],
          ),
        ),
      ),
    );
  }
}
