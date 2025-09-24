import 'package:flutter/material.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({
    required this.label,
    this.size = CCButtonSize.md,
    this.enable = true,
    this.debounce = true,
    this.wrap = true,
    this.showLeading = false,
    this.showTrailing = false,
    this.variant = CCButtonVariant.primary,
    this.type = CCButtonType.filled,
    super.key,
  });

  final bool wrap;
  final bool showLeading;
  final bool showTrailing;
  final bool enable;
  final bool debounce;
  final String label;
  final CCButtonType type;
  final CCButtonSize size;
  final CCButtonVariant variant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.all(CCSize.size16.r),
        child: Center(
          child: CCButton(
            label: label,
            enable: enable,
            size: size,
            type: type,
            onPressed: () async {},
            variant: variant,
            debounce: debounce,
            wrap: wrap,
            leading: showLeading
                ? Icon(
                    Icons.download_rounded,
                    size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
                  )
                : null,
            trailing: showTrailing
                ? Icon(
                    Icons.arrow_right_rounded,
                    size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
