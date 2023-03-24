import 'package:movie_manage/base/base_cl.dart';
import 'package:movie_manage/controller/global_cl.dart';
import 'package:movie_manage/data/tmdb_list_result.dart';
import 'package:movie_manage/data/trending_data.dart';

class TmdbTrendingController extends BaseController {
  final data = Rxn<TmdbListResult<List<TrendingData>>>(null);

  void getTrending() async {
    var result = await GlobalController.to.tmdb.v3.trending.getTrending();
    if (result.isNotEmpty) {
      List<TrendingData> trendingDatas = [];
      if (result['results'] is List) {
        for (var item in (result['results'] as List)) {
          trendingDatas.add(TrendingData.fromJson(item));
        }
      }
      var tmdbListResult =
          TmdbListResult.fromJson(result as Map<String, dynamic>);
      tmdbListResult.results = trendingDatas;
      data.value = tmdbListResult as TmdbListResult<List<TrendingData>>?;
    }
  }
}
