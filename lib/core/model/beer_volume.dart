import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'beer_volume.freezed.dart';

part 'beer_volume.g.dart';

@freezed
class BeerVolume with _$BeerVolume {
  const factory BeerVolume({
    required int? value,
    required String? unit,
  }) = _BeerVolume;

  factory BeerVolume.fromJson(Map<String, dynamic> json) =>
      _$BeerVolumeFromJson(json);
}
