import 'package:car_crew_ui_kit/src/templates/footer_layout/visibility/visibility.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class DefaultKeyboardVisibilityController
    implements CCKeyboardVisibilityController {
  const DefaultKeyboardVisibilityController();

  @override
  Stream<bool> get onChange => KeyboardVisibilityController().onChange;
}
