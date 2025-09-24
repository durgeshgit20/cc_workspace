import 'dart:async';

import 'package:car_crew_ui_kit/src/templates/footer_layout/animations/animations.dart';
import 'package:car_crew_ui_kit/src/templates/footer_layout/data/keyboard_animation_property.dart';
import 'package:car_crew_ui_kit/src/templates/footer_layout/visibility/visibility.dart';
import 'package:flutter/material.dart';

typedef KeyboardTransitionBuilder = Widget Function(
  Widget child,
  Animation<double> animation,
  double keyboardHeight,
);

class CCKeyboardAttachable extends StatefulWidget {
  const CCKeyboardAttachable({
    super.key,
    this.backgroundColor = Colors.transparent,
    this.transitionBuilder = CCKeyboardAttachable._defaultBuilder,
    this.child,
  });

  /// The color that fills the space that is added when the keyboard appears.
  ///
  /// Defaults to [Colors.transparent].
  final Color backgroundColor;

  /// A function that wraps a new child with an animation that makes the
  /// keyboard appear when the animation runs in the forward direction and hide
  /// when the animation runs in the reverse direction.
  ///
  /// This is only called when the keyboard changes its status from hidden to
  /// shown.
  ///
  /// Defaults to [CCKeyboardAttachable._defaultBuilder], which simply returns
  /// the child that was passed to [CCKeyboardAttachable].
  ///
  /// The animation provided to the builder has the duration and curve needed
  /// to make the keyboard animation match the corresponding platform animation.
  /// The animation value will be 0 if the keyboard is dismissed, and 1 if the
  /// keyboard is fully shown.
  ///
  /// See also:
  ///
  /// * [KeyboardTransitionBuilder] for more information about how a transition
  /// builder should function.
  final KeyboardTransitionBuilder transitionBuilder;

  /// The widget to be placed above the space that this widget can insert.
  final Widget? child;

  static Widget _defaultBuilder(
    Widget child,
    Animation<double> animation,
    double keyboardHeight,
  ) =>
      child;

  @override
  State<CCKeyboardAttachable> createState() =>
      _CCKeyboardAttachableState();
}

class _CCKeyboardAttachableState extends State<CCKeyboardAttachable>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late final CCKeyboardAnimationController _controller;
  late final CCKeyboardVisibilityController _keyboardController;
  late StreamSubscription<bool> _visibilitySubscription;

  final _keyboardAttachableKey = GlobalKey();
  late final ValueNotifier<KeyboardAnimationProperty>
      _keyboardAnimationNotifier;

  void _animate(bool isKeyboardVisible) =>
      isKeyboardVisible ? _controller.forward() : _controller.reverse();

  Rect _globalBounds({required GlobalKey key}) {
    final renderObject = key.currentContext?.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject != null) {
      final offset = Offset(translation.x, translation.y);
      return renderObject.paintBounds.shift(offset);
    } else {
      return Rect.zero;
    }
  }

  @override
  void initState() {
    super.initState();
    _keyboardAnimationNotifier = ValueNotifier(
      const KeyboardAnimationProperty(),
    );
    _keyboardController = const DefaultKeyboardVisibilityController();
    _controller =
        CCKeyboardAnimationInjector(this).getPlatformController();

    WidgetsBinding.instance.addObserver(this);
    _visibilitySubscription = _keyboardController.onChange.listen(
      _animate,
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _keyboardAnimationNotifier.dispose();
    _controller.dispose();
    _visibilitySubscription.cancel();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final mediaQuery = MediaQueryData.fromView(View.of(context));
    final keyboardHeight = mediaQuery.viewInsets.bottom;
    final screenHeight = mediaQuery.size.height;
    final keyboardAttachableBounds = _globalBounds(key: _keyboardAttachableKey);
    final bottomOffset = screenHeight - keyboardAttachableBounds.bottom;
    final bottomInset =
        (keyboardHeight - bottomOffset).clamp(0, keyboardHeight).toDouble();
    final isKeyboardDismissed = keyboardHeight == 0;
    final animationBegin =
        !isKeyboardDismissed ? (1 - bottomInset / keyboardHeight) : 0.0;

    if (bottomInset > 0) {
      _keyboardAnimationNotifier.value = KeyboardAnimationProperty(
        animationStart: isKeyboardDismissed ? 0 : animationBegin,
        bottomInset: bottomInset,
      );
    }
  }

  @override
  Widget build(BuildContext context) =>
      ValueListenableBuilder<KeyboardAnimationProperty>(
        valueListenable: _keyboardAnimationNotifier,
        builder: (_, keyboardAnimationProperty, __) {
          final offsetAnimation = CurvedAnimation(
            parent: _controller.animation,
            curve: Interval(keyboardAnimationProperty.animationStart, 1),
          );
          return Column(
            key: _keyboardAttachableKey,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.child != null)
                widget.transitionBuilder(
                  widget.child!,
                  offsetAnimation,
                  keyboardAnimationProperty.bottomInset,
                ),
              SizeTransition(
                sizeFactor: offsetAnimation,
                child: Container(
                  height: keyboardAnimationProperty.bottomInset,
                  color: widget.backgroundColor,
                ),
              ),
            ],
          );
        },
      );
}
