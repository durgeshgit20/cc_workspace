import 'package:flutter/material.dart';

class MessengerUtil {
  factory MessengerUtil() => _instance;

  MessengerUtil._() : _rootScaffoldMessengerKey = GlobalKey();

  static final MessengerUtil _instance = MessengerUtil._();

  final GlobalKey<ScaffoldMessengerState> _rootScaffoldMessengerKey;

  GlobalKey<ScaffoldMessengerState> get rootScaffoldMessengerKey =>
      _rootScaffoldMessengerKey;
}
