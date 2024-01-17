import 'package:test_exercise/core/model/beer_volume.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'mash_temp.freezed.dart';

part 'mash_temp.g.dart';

@freezed
class MashTemp with _$MashTemp {
  const factory MashTemp({
    @JsonKey(name: 'temp') required BeerVolume? temperature,
    required int? duration,
  }) = _MashTemp;

  factory MashTemp.fromJson(Map<String, dynamic> json) =>
      _$MashTempFromJson(json);
}
