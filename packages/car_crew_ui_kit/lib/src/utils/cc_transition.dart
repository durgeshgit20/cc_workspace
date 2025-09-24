import 'package:flutter/material.dart';

enum CCTransition {
  fade,
  slideLeft,
  slideRight,
  slideUp,
  slideDown;

  Widget builder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) =>
      switch (this) {
        fade => _fade(
            context,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
        slideLeft => _slideLeft(
            context,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
        slideRight => _slideRight(
            context,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
        slideUp => _slideUp(
            context,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
        slideDown => _slideDown(
            context,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
      };

  Widget _slideUp(
    BuildContext context, {
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
  }) =>
      SlideTransition(
        position: Tween(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(animation),
        child: FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(animation),
          child: child,
        ),
      );

  Widget _slideDown(
    BuildContext context, {
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
  }) =>
      SlideTransition(
        position: Tween(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(animation),
        child: FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(animation),
          child: child,
        ),
      );

  Widget _slideLeft(
    BuildContext context, {
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
  }) =>
      SlideTransition(
        position: Tween(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(animation),
          child: child,
        ),
      );
  Widget _slideRight(
    BuildContext context, {
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
  }) =>
      SlideTransition(
        position: Tween(
          begin: const Offset(-1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(animation),
          child: child,
        ),
      );

  Widget _fade(
    BuildContext context, {
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
  }) =>
      FadeTransition(
        opacity: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(animation),
        child: child,
      );
}
