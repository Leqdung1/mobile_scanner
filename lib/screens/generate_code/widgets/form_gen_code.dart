import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/extensions/theme_extension.dart';
import 'package:qr_scanner/core/style/text_style.dart';
import 'package:qr_scanner/screens/generate_code/widgets/text_field_widget.dart';
import 'package:qr_scanner/core/enum/app_enum.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormGenCode extends StatefulWidget {
  final ScanType scanType;
  const FormGenCode({super.key, required this.scanType});

  @override
  State<FormGenCode> createState() => _FormGenCodeState();
}

class _FormGenCodeState extends State<FormGenCode> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xFF3B3B3B).withOpacity(0.78),
          borderRadius: BorderRadius.circular(12),
          border: const Border(
            top: BorderSide(color: Color(0xFFFDB623), width: 2),
            bottom: BorderSide(color: Color(0xFFFDB623), width: 2),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              widget.scanType.icon,
              color: const Color(0xFFFDB623),
              height: 56,
              width: 56,
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.scanType.name,
                style: context.textTheme.body17,
              ),
            ),
            const SizedBox(height: 8),
            TextFieldWidget(controller: controller),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppThemeConst.primaryColor,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              onPressed: () {
                final text = controller.text.trim();
                if (text.isNotEmpty) {
                  Navigator.pushNamed(
                    context,
                    '/show_qr_code',
                    arguments: text,
                  );
                }
              },
              child: Text(
                'Generate QR Code',
                style: context.textTheme.body17.copyWith(
                  color: AppThemeConst.backgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
