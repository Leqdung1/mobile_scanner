import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/extensions/theme_extension.dart';
import 'package:qr_scanner/core/style/text_style.dart';

class ResultAppBar extends StatelessWidget {
  const ResultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 30, 30),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: AppThemeConst.primaryColor,
              size: 24,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Text('Result', style: context.textTheme.titleAppBar),
      ],
    );
  }
}
