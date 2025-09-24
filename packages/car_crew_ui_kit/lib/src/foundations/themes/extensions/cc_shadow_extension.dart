import 'package:car_crew_ui_kit/src/tokens/tokens.dart';
import 'package:flutter/material.dart';

@immutable
class CCShadowExtension extends ThemeExtension<CCShadowExtension> {
  final List<BoxShadow> card;
  final List<BoxShadow> header;
  final List<BoxShadow> footer;
  final List<BoxShadow> modal;

  const CCShadowExtension._({
    required this.card,
    required this.header,
    required this.footer,
    required this.modal,
  });

  factory CCShadowExtension.light() => CCShadowExtension._(
        card: CCShadow.card,
        header: CCShadow.header,
        footer: CCShadow.footer,
        modal: CCShadow.modal,
      );

  factory CCShadowExtension.dark() => CCShadowExtension._(
        card: CCShadow.cardDark,
        header: CCShadow.headerDark,
        footer: CCShadow.footerDark,
        modal: CCShadow.modalDark,
      );

  @override
  ThemeExtension<CCShadowExtension> copyWith({
    List<BoxShadow>? card,
    List<BoxShadow>? header,
    List<BoxShadow>? footer,
    List<BoxShadow>? modal,
  }) =>
      CCShadowExtension._(
        card: card ?? this.card,
        header: header ?? this.header,
        footer: footer ?? this.footer,
        modal: modal ?? this.modal,
      );

  @override
  ThemeExtension<CCShadowExtension> lerp(
    covariant ThemeExtension<CCShadowExtension>? other,
    double t,
  ) {
    if (other is! CCShadowExtension) {
      return this;
    }

    return CCShadowExtension._(
      card: BoxShadow.lerpList(card, other.card, t) ?? card,
      header: BoxShadow.lerpList(header, other.header, t) ?? header,
      footer: BoxShadow.lerpList(footer, other.footer, t) ?? footer,
      modal: BoxShadow.lerpList(modal, other.modal, t) ?? modal,
    );
  }
}
