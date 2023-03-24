import 'package:movie_manage/base/base_cl.dart';
import 'package:movie_manage/controller/global_cl.dart';

class TmdbTrendingController extends BaseController {
  final data = {}.obs;

  void getTrending() async {
    data.value = await GlobalController.to.tmdb.v3.trending.getTrending();
  }
}
