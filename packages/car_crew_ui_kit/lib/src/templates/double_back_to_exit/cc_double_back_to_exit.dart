import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CCDoubleBackToExit extends StatefulWidget {
  const CCDoubleBackToExit({
    required this.child,
    this.waitingTimeInSecond = 2,
    this.message = 'Press back again to exit the app',
    super.key,
  });

  final Widget child;
  final String message;
  final int waitingTimeInSecond;

  @override
  State<CCDoubleBackToExit> createState() => _CCDoubleBackToExitState();
}

class _CCDoubleBackToExitState extends State<CCDoubleBackToExit> {
  DateTime? _currentBackPressTime;
  bool _canPopNow = false;

  // ignore: avoid_positional_boolean_parameters
  void onPopInvoked(bool didPop, dynamic result) {
    final DateTime now = DateTime.now();
    final DateTime currentTime = _currentBackPressTime ?? now;
    final hasWaitingTimePassed = now.difference(currentTime) >
        Duration(seconds: widget.waitingTimeInSecond);
    if (_currentBackPressTime == null || hasWaitingTimePassed) {
      _currentBackPressTime = now;
      Fluttertoast.showToast(msg: widget.message);
      Future.delayed(
        Duration(seconds: widget.waitingTimeInSecond),
        () {
          // Disable pop invoke and close the toast after required waiting time
          // timeout
          setState(() {
            _canPopNow = false;
          });
          Fluttertoast.cancel();
        },
      );
      // Ok, let user exit app on the next back press
      setState(() {
        _canPopNow = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: _canPopNow,
        onPopInvokedWithResult: onPopInvoked,
        child: widget.child,
      );
}
