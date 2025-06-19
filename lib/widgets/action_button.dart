
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/extensions/theme_extension.dart';
import 'package:qr_scanner/core/style/text_style.dart';

class ActionButton extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback onTap;

  const ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: AppThemeConst.primaryColor,
          borderRadius: BorderRadius.circular(6),
          child: InkWell(
            borderRadius: BorderRadius.circular(6),
            onTap: onTap,
            child: Container(
              width: 64,
              height: 64,
              alignment: Alignment.center,
              child: SvgPicture.asset(icon, width: 24, height: 24),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: context.textTheme.body15),
      ],
    );
  }
}
