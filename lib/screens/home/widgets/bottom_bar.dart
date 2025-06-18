import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/constants/asset_path_const.dart';
import 'package:qr_scanner/core/extensions/theme_extension.dart';
import 'package:qr_scanner/core/style/text_style.dart';

class BottomBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const BottomBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
          decoration: BoxDecoration(
            color: AppThemeConst.backgroundColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                blurRadius: 15,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem(AssetPathConst.icQr, 'Generate', context, () {
                onTabSelected(0);
              }, selectedIndex == 0),
              _buildItem(AssetPathConst.icHistory, 'History', context, () {
                onTabSelected(2);
              }, selectedIndex == 2),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppThemeConst.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: AppThemeConst.primaryColor.withOpacity(0.5),
                  blurRadius: 15,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                AssetPathConst.icQrCode,
                width: 40,
                height: 40,
              ),
              onPressed: () {
                onTabSelected(1);
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildItem(
    String iconPath,
    String label,
    BuildContext context,
    VoidCallback onPressed,
    bool isSelected,
  ) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24,
            height: 24,
            color: isSelected ? AppThemeConst.primaryColor : Color(0xFFD9D9D9),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: context.textTheme.body17.copyWith(
              color:
                  isSelected ? AppThemeConst.primaryColor : Color(0xFFD9D9D9),
            ),
          ),
        ],
      ),
    );
  }
}
