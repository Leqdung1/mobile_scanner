import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/constants/asset_path_const.dart';

class ScanAppBar extends StatelessWidget {
  const ScanAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      decoration: BoxDecoration(
        color: AppThemeConst.backgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            blurRadius: 20,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildItem(AssetPathConst.icGallery, context, () {}),
          _buildItem(AssetPathConst.icFlash, context, () {}),
          _buildItem(AssetPathConst.icCamera, context, () {}),
        ],
      ),
    );
  }

  Widget _buildItem(
    String iconPath,
    BuildContext context,
    VoidCallback onPressed,
  ) {
    return GestureDetector(
      onTap: onPressed,
      child: SvgPicture.asset(iconPath, width: 24, height: 24),
    );
  }
}
