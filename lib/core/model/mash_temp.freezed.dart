// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mash_temp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MashTemp _$MashTempFromJson(Map<String, dynamic> json) {
  return _MashTemp.fromJson(json);
}

/// @nodoc
mixin _$MashTemp {
  @JsonKey(name: 'temp')
  BeerVolume? get temperature => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MashTempCopyWith<MashTemp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MashTempCopyWith<$Res> {
  factory $MashTempCopyWith(MashTemp value, $Res Function(MashTemp) then) =
      _$MashTempCopyWithImpl<$Res, MashTemp>;
  @useResult
  $Res call({@JsonKey(name: 'temp') BeerVolume? temperature, int? duration});

  $BeerVolumeCopyWith<$Res>? get temperature;
}

/// @nodoc
class _$MashTempCopyWithImpl<$Res, $Val extends MashTemp>
    implements $MashTempCopyWith<$Res> {
  _$MashTempCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as BeerVolume?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeerVolumeCopyWith<$Res>? get temperature {
    if (_value.temperature == null) {
      return null;
    }

    return $BeerVolumeCopyWith<$Res>(_value.temperature!, (value) {
      return _then(_value.copyWith(temperature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MashTempImplCopyWith<$Res>
    implements $MashTempCopyWith<$Res> {
  factory _$$MashTempImplCopyWith(
          _$MashTempImpl value, $Res Function(_$MashTempImpl) then) =
      __$$MashTempImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'temp') BeerVolume? temperature, int? duration});

  @override
  $BeerVolumeCopyWith<$Res>? get temperature;
}

/// @nodoc
class __$$MashTempImplCopyWithImpl<$Res>
    extends _$MashTempCopyWithImpl<$Res, _$MashTempImpl>
    implements _$$MashTempImplCopyWith<$Res> {
  __$$MashTempImplCopyWithImpl(
      _$MashTempImpl _value, $Res Function(_$MashTempImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$MashTempImpl(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as BeerVolume?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MashTempImpl with DiagnosticableTreeMixin implements _MashTemp {
  const _$MashTempImpl(
      {@JsonKey(name: 'temp') required this.temperature,
      required this.duration});

  factory _$MashTempImpl.fromJson(Map<String, dynamic> json) =>
      _$$MashTempImplFromJson(json);

  @override
  @JsonKey(name: 'temp')
  final BeerVolume? temperature;
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MashTemp(temperature: $temperature, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MashTemp'))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MashTempImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temperature, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MashTempImplCopyWith<_$MashTempImpl> get copyWith =>
      __$$MashTempImplCopyWithImpl<_$MashTempImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MashTempImplToJson(
      this,
    );
  }
}

abstract class _MashTemp implements MashTemp {
  const factory _MashTemp(
      {@JsonKey(name: 'temp') required final BeerVolume? temperature,
      required final int? duration}) = _$MashTempImpl;

  factory _MashTemp.fromJson(Map<String, dynamic> json) =
      _$MashTempImpl.fromJson;

  @override
  @JsonKey(name: 'temp')
  BeerVolume? get temperature;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$MashTempImplCopyWith<_$MashTempImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
