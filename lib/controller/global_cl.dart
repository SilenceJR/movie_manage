import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_manage/base/base_cl.dart';
import 'package:tmdb_api/tmdb_api.dart';

class GlobalController extends BaseService {
  static GlobalController to = Get.put(GlobalController());

  late TMDB tmdb;

  initTMDB({
    required String apiKeyV3,
    required String apiReadAccessTokenv4,
    String language = 'zh-CN',
    Dio? dio,
    Interceptors? interceptors,
  }) {
    tmdb = TMDB(ApiKeys(apiKeyV3, apiReadAccessTokenv4),
        dio: dio,
        interceptors: interceptors,
        logConfig: const ConfigLogger(
            showLogs: !kReleaseMode,
            showErrorLogs: !kReleaseMode,
            showInfoLogs: !kReleaseMode,
            showUrlLogs: !kReleaseMode,
            showWarningLogs: !kReleaseMode),
        defaultLanguage: language);
  }
}
