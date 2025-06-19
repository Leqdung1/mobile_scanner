import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
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
        );
  }
}