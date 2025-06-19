import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/result_scan/widgets/quick_action_button.dart';
import 'package:qr_scanner/screens/result_scan/widgets/result_app_bar.dart';
import 'package:qr_scanner/screens/result_scan/widgets/result_card.dart';
import 'package:qr_scanner/widgets/background_widget.dart';

class ResultScanScreen extends StatelessWidget {
  const ResultScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
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
