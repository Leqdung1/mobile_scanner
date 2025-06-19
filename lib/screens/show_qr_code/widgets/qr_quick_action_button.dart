import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/asset_path_const.dart';
import 'package:qr_scanner/widgets/action_button.dart';

class QrQuickActionButton extends StatelessWidget {
  const QrQuickActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ActionButton(
          icon: AssetPathConst.icShare,
          label: 'Share',
          onTap: () {
            // Share logic
          },
        ),
        const SizedBox(width: 32),
        ActionButton(
          icon: AssetPathConst.icSave,
          label: 'Save',
          onTap: () {
            // Copy logic
          },
        ),
      ],
    );
  }
}
