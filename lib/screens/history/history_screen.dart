import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';
import 'package:qr_scanner/core/constants/asset_path_const.dart';
import 'package:qr_scanner/core/extensions/theme_extension.dart';
import 'package:qr_scanner/core/style/text_style.dart';
import 'package:qr_scanner/screens/history/widgets/create_tab.dart';
import 'package:qr_scanner/screens/history/widgets/scan_tab.dart';
import 'package:qr_scanner/screens/history/widgets/tab_bar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppThemeConst.backgroundColor.withOpacity(0.84),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetPathConst.imgBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                title: Text('History', style: context.textTheme.titleAppBar),
              ),
              const SizedBox(height: 20),
              Builder(
                builder: (context) {
                  final TabController controller = DefaultTabController.of(
                    context,
                  );
                  return CustomHistoryTabBar(controller: controller);
                },
              ),
              SizedBox(height: 39),
              Expanded(child: TabBarView(children: [ScanTab(), CreateTab()])),
            ],
          ),
        ),
      ),
    );
  }
}
