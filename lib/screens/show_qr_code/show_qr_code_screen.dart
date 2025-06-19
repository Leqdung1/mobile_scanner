import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/screens/show_qr_code/widgets/qr_code_app_bar.dart';
import 'package:qr_scanner/screens/show_qr_code/widgets/qr_code_data.dart';
import 'package:qr_scanner/screens/show_qr_code/widgets/qr_quick_action_button.dart';
import 'package:qr_scanner/widgets/background_widget.dart';

class ShowQrCodeScreen extends StatelessWidget {
  const ShowQrCodeScreen({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Column(
            children: [
              const QrCodeAppBar(),
              const SizedBox(height: 39),
              QrCodeData(text: text),
              const SizedBox(height: 58),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppThemeConst.textColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppThemeConst.primaryColor,
                    style: BorderStyle.solid,
                    width: 5,
                  ),
                ),
                child: QrImageView(data: text, version: QrVersions.auto),
              ),
              const SizedBox(height: 41),
              const QrQuickActionButton(),
            ],
          ),
        ),
      ),
    );
  }
}
