import 'package:flutter/material.dart';
import 'package:qr_scanner/core/extensions/theme_extension.dart';
import 'package:qr_scanner/core/style/text_style.dart';
import 'package:qr_scanner/widgets/button_back.dart';

class GenCodeAppBar extends StatelessWidget {
  final String title;
  const GenCodeAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ButtonBack(),
        const SizedBox(width: 20),
        Text(title, style: context.textTheme.titleAppBar),
      ],
    );
  }
}