import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/constants/asset_path_const.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeConst.backgroundColor.withOpacity(0.84),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetPathConst.imgBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}