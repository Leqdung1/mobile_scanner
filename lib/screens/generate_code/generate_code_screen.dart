import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/generate_code/widgets/form_gen_code.dart';
import 'package:qr_scanner/screens/generate_code/widgets/gen_code_app_bar.dart';
import 'package:qr_scanner/widgets/background_widget.dart';
import 'package:qr_scanner/core/enum/app_enum.dart';

class GenerateCodeScreen extends StatelessWidget {
  final ScanType scanType;
  const GenerateCodeScreen({super.key, required this.scanType});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Column(
            children: [
              GenCodeAppBar(title: scanType.name),
              const SizedBox(height: 200),
              FormGenCode(scanType: scanType),
            ],
          ),
        ),
      ),
    );
  }
}
