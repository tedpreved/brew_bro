import 'package:test_exercise/core/model/mash_temp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'method.freezed.dart';

part 'method.g.dart';

@freezed
class Method with _$Method {
  const factory Method({
    required List<MashTemp>? mashTemp,
    required Map<String, dynamic>? fermentation,
    required String? twist,
  }) = _Method;

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);
}
