import 'package:car_crew_ui_kit/src/core/generated/assets.gen.dart';
import 'package:flutter/material.dart';

part '_cc_action_icon.dart';
part '_cc_arrow_icon.dart';
part '_cc_communication_icon.dart';
part '_cc_essential_icon.dart';
part '_cc_feedback_icon.dart';
part '_cc_file_icon.dart';
part '_cc_finance_icon.dart';
part '_cc_maps_icon.dart';
part '_cc_media_icon.dart';
part '_cc_security_icon.dart';
part '_cc_time_icon.dart';
part '_cc_user_icon.dart';

@immutable
class CCIconSvg {
  const CCIconSvg._({
    required this.action,
    required this.arrow,
    required this.communication,
    required this.essential,
    required this.feedback,
    required this.file,
    required this.finance,
    required this.maps,
    required this.media,
    required this.security,
    required this.time,
    required this.user,
  });

  factory CCIconSvg.asset() => CCIconSvg._(
    action: CCActionIcon.asset(),
    arrow: CCArrowIcon.asset(),
    communication: CCCommunicationIcon.asset(),
    essential: CCEssentialIcon.asset(),
    feedback: CCFeedbackIcon.asset(),
    file: CCFileIcon.asset(),
    finance: CCFinanceIcon.asset(),
    maps: CCMapsIcon.asset(),
    media: CCMediaIcon.asset(),
    security: CCSecurityIcon.asset(),
    time: CCTimeIcon.asset(),
    user: CCUserIcon.asset(),
  );

  final CCActionIcon action;
  final CCArrowIcon arrow;
  final CCCommunicationIcon communication;
  final CCEssentialIcon essential;
  final CCFeedbackIcon feedback;
  final CCFileIcon file;
  final CCFinanceIcon finance;
  final CCMapsIcon maps;
  final CCMediaIcon media;
  final CCSecurityIcon security;
  final CCTimeIcon time;
  final CCUserIcon user;

}
