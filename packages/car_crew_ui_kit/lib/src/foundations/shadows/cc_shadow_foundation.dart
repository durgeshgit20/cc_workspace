import 'package:car_crew_ui_kit/src/tokens/tokens.dart';
import 'package:flutter/material.dart';

@immutable
class CCShadowFoundation {
  const CCShadowFoundation._();

  static List<BoxShadow> card = CCShadow.card;
  static List<BoxShadow> cardDark = CCShadow.cardDark;

  static List<BoxShadow> header = CCShadow.header;
  static List<BoxShadow> headerDark = CCShadow.headerDark;

  static List<BoxShadow> footer = CCShadow.footer;
  static List<BoxShadow> footerDark = CCShadow.footerDark;

  static List<BoxShadow> modal = CCShadow.modal;
  static List<BoxShadow> modalDark = CCShadow.modalDark;
}
