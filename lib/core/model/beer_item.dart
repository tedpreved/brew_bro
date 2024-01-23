import 'package:test_exercise/core/model/method.dart';
import 'package:test_exercise/core/model/beer_volume.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'beer_item.freezed.dart';

part 'beer_item.g.dart';

@freezed
class BeerItem with _$BeerItem {
  const factory BeerItem({
    required int id,
    required String? name,
    required String? tagline,
    required String? firstBrewed,
    required String? description,
    @JsonKey(name: 'image_url') required String? imageUrl,
    required num? abv,
    required num? ibu,
    required num? targetFg,
    required num? targetOg,
    required double? ebc,
    required double? srm,
    required double? ph,
    required double? attenuationLevel,
    @JsonKey(name: 'volume') required BeerVolume? beerVolume,
    required BeerVolume? boilVolume,
    required Method? method,
  }) = _BeerItem;

  factory BeerItem.fromJson(Map<String, dynamic> json) =>
      _$BeerItemFromJson(json);
}
