import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/history/widgets/scan_result_card.dart';

class ScanTab extends StatelessWidget {
  const ScanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder:
          (context, index) => ScanResultCard(
            url: 'https://itunes.com',
            dateTime: '16 Dec 2022, 9:30 pm',
            onDelete: () {},
            onTap: () {},
          ),
    );
  }
}
