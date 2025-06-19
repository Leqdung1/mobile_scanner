import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/asset_path_const.dart';
import 'package:qr_scanner/screens/show_qr_code/widgets/qr_code_app_bar.dart';
import 'package:qr_scanner/screens/show_qr_code/widgets/qr_code_data.dart';
import 'package:qr_scanner/screens/show_qr_code/widgets/qr_quick_action_button.dart';
import 'package:qr_scanner/widgets/background_widget.dart';

class ShowQrCodeScreen extends StatelessWidget {
  const ShowQrCodeScreen({super.key});

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
              const QrCodeData(),
              const SizedBox(height: 58),
              Image.asset(AssetPathConst.imgQrSample),
              const SizedBox(height: 41),
              const QrQuickActionButton(),
            ],
          ),
        ),
      ),
    );
  }
}
