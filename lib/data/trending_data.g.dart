// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingData _$TrendingDataFromJson(Map<String, dynamic> json) => TrendingData()
  ..adult = json['adult'] as bool
  ..backdropPath = json['backdrop_path'] as String
  ..id = json['id'] as num
  ..title = json['title'] as String
  ..originalLanguage = json['original_language'] as String
  ..originalTitle = json['originalTitle'] as String
  ..overview = json['overview'] as String
  ..posterPath = json['poster_path'] as String
  ..mediaType = json['media_type'] as String
  ..genreIds = (json['genreIds'] as List<dynamic>).map((e) => e as int).toList()
  ..popularity = json['popularity'] as num
  ..releaseDate = json['release_date'] as String
  ..video = json['video'] as bool
  ..voteAverage = json['vote_average'] as num
  ..voteCount = json['vote_count'] as num;

Map<String, dynamic> _$TrendingDataToJson(TrendingData instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'original_language': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'genreIds': instance.genreIds,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
