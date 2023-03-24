import 'package:json_annotation/json_annotation.dart';

part 'trending_data.g.dart';

@JsonSerializable()
class TrendingData {
  ///{adult: false, backdrop_path: /h8gHn0OzBoaefsYseUByqsmEDMY.jpg, id: 603692, title: 疾速追杀4, original_language: en, original_title: John Wick: Chapter 4, overview: 狮门宣布《疾速追杀》第四部定档2021年5月21日北美上映，2年后的今天。系列主演基努·里维斯是否回归尚未宣布，不过狮门应该会力保他回归。, poster_path: /dKtgSYi2AwlaHYo1Iqie8wlMsc5.jpg, media_type: movie, genre_ids: [28, 53, 80], popularity: 1608.653, release_date: 2023-03-22, video: false, vote_average: 8.203, vote_count: 101}
  late final bool adult;
  @JsonKey(name: 'backdrop_path')
  late final String backdropPath;
  late final num id;
  late final String title;
  @JsonKey(name: 'original_language')
  late final String originalLanguage;
  @JsonKey(name: 'originalTitle')
  late final String originalTitle;
  late final String overview;
  @JsonKey(name: 'poster_path')
  late final String posterPath;
  @JsonKey(name: 'media_type')
  late final String mediaType;
  late final List<int> genreIds;
  late final num popularity;
  @JsonKey(name: 'release_date')
  late final String releaseDate;
  late final bool video;
  @JsonKey(name: 'vote_average')
  late final num voteAverage;
  @JsonKey(name: 'vote_count')
  late final num voteCount;

  static TrendingData fromJson(Map<String, dynamic> json) =>
      _$TrendingDataFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingDataToJson(this);
}
