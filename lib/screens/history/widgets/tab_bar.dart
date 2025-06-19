import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';

class CustomHistoryTabBar extends StatelessWidget {
  final TabController controller;

  const CustomHistoryTabBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppThemeConst.backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TabBar(
        controller: controller,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.transparent,
        indicator: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFDB623),
              Color(0xFFFDB623),
              Color.fromARGB(255, 59, 59, 59),
            ],
            stops: [0.0, 0.3, 1.0],
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        unselectedLabelColor: AppThemeConst.textColor,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        tabs: const [Tab(text: 'Scan'), Tab(text: 'Create')],
      ),
    );
  }
}
