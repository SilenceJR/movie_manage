import 'package:flutter/foundation.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Tm {
  Tm._();

  static Tm instance = Tm._();

  final tmdb = TMDB(ApiKeys('_apiKeyV3', '_apiReadAccessTokenv4'),
      logConfig: const ConfigLogger(
          showLogs: !kReleaseMode,
          showErrorLogs: !kReleaseMode,
          showInfoLogs: !kReleaseMode,
          showUrlLogs: !kReleaseMode,
          showWarningLogs: !kReleaseMode),
      defaultLanguage: 'zh-CN');

}
