import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/enum/app_enum.dart';
import 'package:qr_scanner/core/extensions/theme_extension.dart';
import 'package:qr_scanner/core/style/text_style.dart';

class GenerateQrScreen extends StatelessWidget {
  const GenerateQrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeConst.backgroundColor.withOpacity(0.84),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Generate QR', style: context.textTheme.titleAppBar),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(top: 50),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
        ),
        itemCount: ScanType.values.length,
        itemBuilder: (context, index) {
          final scanType = ScanType.values[index];
          return _buildItem(context, scanType.name, scanType.icon);
        },
      ),
    );
  }

  Widget _buildItem(BuildContext context, String label, String icon) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: AppThemeConst.backgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppThemeConst.primaryColor, width: 2),
          ),
          alignment: Alignment.center,
          child: SvgPicture.asset(icon, height: 40, width: 40),
        ),
        Positioned(
          top: -10,

          child: Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: AppThemeConst.primaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(label, style: context.textTheme.body12),
          ),
        ),
      ],
    );
  }
}
