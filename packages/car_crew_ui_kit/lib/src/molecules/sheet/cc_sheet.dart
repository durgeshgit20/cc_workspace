import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';
import 'package:flutter/material.dart';

class CCSheet<T> extends StatelessWidget {
  const CCSheet._({
    required this.child,
    required this.paddedKeyboard,
    super.key,
    this.title,
    this.bgColor,
    this.onClose,
    this.heightFactor,
    this.padding,
  }) : assert(
          heightFactor != null && heightFactor > 0 && heightFactor <= 1,
          'heightFactor must be fraction between 0 and 1',
        );

  final Widget child;
  final String? title;
  final Color? bgColor;
  final ValueChanged<BuildContext>? onClose;
  final double? heightFactor;
  final bool paddedKeyboard;
  final EdgeInsets? padding;

  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    String? title,
    bool enableDrag = true,
    bool isDismissible = true,
    Color? bgColor,
    ValueChanged<BuildContext>? onClose,
    double? heightFactor,
    bool paddedKeyboard = true,
    EdgeInsets? padding,
  }) =>
      showModalBottomSheet<T>(
        context: context,
        enableDrag: enableDrag,
        isDismissible: isDismissible,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(CCBorderRadius.lg.r),
          ),
        ),
        builder: (_) {
          final sheet = CCSheet<T>._(
            onClose: onClose,
            bgColor: bgColor,
            heightFactor: heightFactor,
            paddedKeyboard: paddedKeyboard,
            padding: padding,
            title: title,
            child: child,
          );

          if (heightFactor != null) {
            return FractionallySizedBox(
              heightFactor: heightFactor,
              child: sheet,
            );
          }

          return sheet;
        },
      );

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(
          top: MediaQuery.paddingOf(context).top,
        ),
        decoration: BoxDecoration(
          color: bgColor ?? context.ccColor.background.neutral.main,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(CCBorderRadius.lg.r),
          ),
        ),
        padding: (padding ??
                EdgeInsets.symmetric(
                  horizontal: CCSize.size16.w,
                ))
            .add(
          EdgeInsets.only(
            bottom:
                paddedKeyboard ? MediaQuery.viewInsetsOf(context).bottom : 0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (heightFactor != null)
              Expanded(child: child)
            else
              Flexible(
                child: SingleChildScrollView(
                  child: child,
                ),
              ),
          ],
        ),
      );
}
