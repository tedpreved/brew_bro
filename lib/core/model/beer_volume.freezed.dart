// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beer_volume.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeerVolume _$BeerVolumeFromJson(Map<String, dynamic> json) {
  return _BeerVolume.fromJson(json);
}

/// @nodoc
mixin _$BeerVolume {
  int? get value => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerVolumeCopyWith<BeerVolume> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerVolumeCopyWith<$Res> {
  factory $BeerVolumeCopyWith(
          BeerVolume value, $Res Function(BeerVolume) then) =
      _$BeerVolumeCopyWithImpl<$Res, BeerVolume>;
  @useResult
  $Res call({int? value, String? unit});
}

/// @nodoc
class _$BeerVolumeCopyWithImpl<$Res, $Val extends BeerVolume>
    implements $BeerVolumeCopyWith<$Res> {
  _$BeerVolumeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeerVolumeImplCopyWith<$Res>
    implements $BeerVolumeCopyWith<$Res> {
  factory _$$BeerVolumeImplCopyWith(
          _$BeerVolumeImpl value, $Res Function(_$BeerVolumeImpl) then) =
      __$$BeerVolumeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value, String? unit});
}

/// @nodoc
class __$$BeerVolumeImplCopyWithImpl<$Res>
    extends _$BeerVolumeCopyWithImpl<$Res, _$BeerVolumeImpl>
    implements _$$BeerVolumeImplCopyWith<$Res> {
  __$$BeerVolumeImplCopyWithImpl(
      _$BeerVolumeImpl _value, $Res Function(_$BeerVolumeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$BeerVolumeImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeerVolumeImpl with DiagnosticableTreeMixin implements _BeerVolume {
  const _$BeerVolumeImpl({required this.value, required this.unit});

  factory _$BeerVolumeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeerVolumeImplFromJson(json);

  @override
  final int? value;
  @override
  final String? unit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeerVolume(value: $value, unit: $unit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BeerVolume'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('unit', unit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeerVolumeImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeerVolumeImplCopyWith<_$BeerVolumeImpl> get copyWith =>
      __$$BeerVolumeImplCopyWithImpl<_$BeerVolumeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeerVolumeImplToJson(
      this,
    );
  }
}

abstract class _BeerVolume implements BeerVolume {
  const factory _BeerVolume(
      {required final int? value,
      required final String? unit}) = _$BeerVolumeImpl;

  factory _BeerVolume.fromJson(Map<String, dynamic> json) =
      _$BeerVolumeImpl.fromJson;

  @override
  int? get value;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$BeerVolumeImplCopyWith<_$BeerVolumeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
