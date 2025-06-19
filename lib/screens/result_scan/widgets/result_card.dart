import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/constants/asset_path_const.dart';
import 'package:qr_scanner/core/extensions/theme_extension.dart';
import 'package:qr_scanner/core/style/text_style.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF3C3C3C),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // QR Icon
                SvgPicture.asset(
                  AssetPathConst.icHistoryScan,
                  width: 32,
                  height: 32,
                ),
                const SizedBox(width: 12),
                // Data and date
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Data', style: context.textTheme.body22),
                    const SizedBox(height: 2),
                    Text(
                      '16 Dec 2022, 9:30 pm',
                      style: context.textTheme.dateTime,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Link
            Text(
              'https://www.youtube.com/watch?v=Zd9g7sKvgIM',
              style: context.textTheme.body17,
            ),
            const SizedBox(height: 13),
            // Show QR Code link
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/show_qr_code');
              },
              child: Center(
                child: Text(
                  'Show QR Code',
                  style: context.textTheme.body15.copyWith(
                    color: AppThemeConst.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
