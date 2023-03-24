

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_manage/page/tmdb_trending_cl.dart';

class TmdbTrendingPage extends GetView<TmdbTrendingController> {
  const TmdbTrendingPage({Key? key}) : super(key: key);


  @override
  TmdbTrendingController get controller => Get.put(TmdbTrendingController());

  @override
  Widget build(BuildContext context) {
    controller.getTrending();
    return Obx(() {
      print('data: ${controller.data}');
      return ListView();
    });
  }
}
