import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/extensions/theme_extension.dart';
import 'package:qr_scanner/core/style/text_style.dart';
import 'package:qr_scanner/widgets/button_back.dart';

class QrCodeAppBar extends StatelessWidget {
  const QrCodeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ButtonBack(),
        const SizedBox(width: 20),
        Text('QR Code', style: context.textTheme.titleAppBar),
      ],
    );
  }
}
