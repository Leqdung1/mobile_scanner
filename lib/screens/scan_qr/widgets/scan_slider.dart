import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';

class ScanSlider extends StatelessWidget {
  const ScanSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.remove, color: AppThemeConst.textColor),
        ),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 3,
              trackShape: const RectangularSliderTrackShape(),
              overlayShape: SliderComponentShape.noOverlay,
              activeTrackColor: AppThemeConst.primaryColor,
              inactiveTrackColor: AppThemeConst.textColor,
              thumbShape: const CustomThumbShape(thumbRadius: 10),
            ),
            child: Slider(
              value: 0.5,
              min: 0,
              max: 1,
              label: '${(0.5 * 100).round()}',
              onChanged: (value) {},
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add, color: AppThemeConst.textColor),
        ),
      ],
    );
  }
}

class CustomThumbShape extends SliderComponentShape {
  final double thumbRadius;
  const CustomThumbShape({this.thumbRadius = 10});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    // Draw outer white circle
    final outerCirclePaint =
        Paint()
          ..color = AppThemeConst.textColor
          ..style = PaintingStyle.fill;
    canvas.drawCircle(center, thumbRadius, outerCirclePaint);

    // Draw inner yellow/orange circle
    final innerCirclePaint =
        Paint()
          ..color = AppThemeConst.primaryColor
          ..style = PaintingStyle.fill;
    canvas.drawCircle(center, thumbRadius - 3, innerCirclePaint);
  }
}
