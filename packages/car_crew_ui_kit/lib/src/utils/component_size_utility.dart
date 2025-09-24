import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ComponentSizeUtility {
  const ComponentSizeUtility._();

  static double getTextHeight({
    required Text text,
    required BuildContext context,
  }) {
    final span = TextSpan(
      text: text.data,
      style: text.style,
    );

    const constraints = BoxConstraints();

    final richTextWidget = Text.rich(span).build(context) as RichText;
    final renderObject = richTextWidget.createRenderObject(context)
      ..layout(constraints);

    final boxes = renderObject.getBoxesForSelection(
      TextSelection(
        baseOffset: 0,
        extentOffset: TextSpan(text: text.data).toPlainText().length,
      ),
    );

    return boxes.last.bottom;
  }

  static double getTextWidth({
    required Text text,
    required BuildContext context,
  }) {
    final span = TextSpan(text: text.data, style: text.style);

    const constraints = BoxConstraints();

    final richTextWidget = Text.rich(span).build(context) as RichText;
    final renderObject = richTextWidget.createRenderObject(context)
      ..layout(constraints);

    final boxes = renderObject.getBoxesForSelection(
      TextSelection(
        baseOffset: 0,
        extentOffset: TextSpan(text: text.data).toPlainText().length,
      ),
    );

    return boxes.last.right;
  }
}
