import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/generate_code/widgets/form_gen_code.dart';
import 'package:qr_scanner/screens/generate_code/widgets/gen_code_app_bar.dart';
import 'package:qr_scanner/widgets/background_widget.dart';

class GenerateCodeScreen extends StatelessWidget {
  const GenerateCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Column(
            children: [
              const GenCodeAppBar(title: 'Generate Code'),
              const SizedBox(height: 200),
              const FormGenCode(),
            ],
          ),
        ),
      ),
    );
  }
}
