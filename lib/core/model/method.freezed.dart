// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Method _$MethodFromJson(Map<String, dynamic> json) {
  return _Method.fromJson(json);
}

/// @nodoc
mixin _$Method {
  List<MashTemp>? get mashTemp => throw _privateConstructorUsedError;
  Map<String, dynamic>? get fermentation => throw _privateConstructorUsedError;
  String? get twist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodCopyWith<Method> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodCopyWith<$Res> {
  factory $MethodCopyWith(Method value, $Res Function(Method) then) =
      _$MethodCopyWithImpl<$Res, Method>;
  @useResult
  $Res call(
      {List<MashTemp>? mashTemp,
      Map<String, dynamic>? fermentation,
      String? twist});
}

/// @nodoc
class _$MethodCopyWithImpl<$Res, $Val extends Method>
    implements $MethodCopyWith<$Res> {
  _$MethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mashTemp = freezed,
    Object? fermentation = freezed,
    Object? twist = freezed,
  }) {
    return _then(_value.copyWith(
      mashTemp: freezed == mashTemp
          ? _value.mashTemp
          : mashTemp // ignore: cast_nullable_to_non_nullable
              as List<MashTemp>?,
      fermentation: freezed == fermentation
          ? _value.fermentation
          : fermentation // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      twist: freezed == twist
          ? _value.twist
          : twist // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MethodImplCopyWith<$Res> implements $MethodCopyWith<$Res> {
  factory _$$MethodImplCopyWith(
          _$MethodImpl value, $Res Function(_$MethodImpl) then) =
      __$$MethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MashTemp>? mashTemp,
      Map<String, dynamic>? fermentation,
      String? twist});
}

/// @nodoc
class __$$MethodImplCopyWithImpl<$Res>
    extends _$MethodCopyWithImpl<$Res, _$MethodImpl>
    implements _$$MethodImplCopyWith<$Res> {
  __$$MethodImplCopyWithImpl(
      _$MethodImpl _value, $Res Function(_$MethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mashTemp = freezed,
    Object? fermentation = freezed,
    Object? twist = freezed,
  }) {
    return _then(_$MethodImpl(
      mashTemp: freezed == mashTemp
          ? _value._mashTemp
          : mashTemp // ignore: cast_nullable_to_non_nullable
              as List<MashTemp>?,
      fermentation: freezed == fermentation
          ? _value._fermentation
          : fermentation // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      twist: freezed == twist
          ? _value.twist
          : twist // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MethodImpl with DiagnosticableTreeMixin implements _Method {
  const _$MethodImpl(
      {required final List<MashTemp>? mashTemp,
      required final Map<String, dynamic>? fermentation,
      required this.twist})
      : _mashTemp = mashTemp,
        _fermentation = fermentation;

  factory _$MethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$MethodImplFromJson(json);

  final List<MashTemp>? _mashTemp;
  @override
  List<MashTemp>? get mashTemp {
    final value = _mashTemp;
    if (value == null) return null;
    if (_mashTemp is EqualUnmodifiableListView) return _mashTemp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _fermentation;
  @override
  Map<String, dynamic>? get fermentation {
    final value = _fermentation;
    if (value == null) return null;
    if (_fermentation is EqualUnmodifiableMapView) return _fermentation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? twist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Method(mashTemp: $mashTemp, fermentation: $fermentation, twist: $twist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Method'))
      ..add(DiagnosticsProperty('mashTemp', mashTemp))
      ..add(DiagnosticsProperty('fermentation', fermentation))
      ..add(DiagnosticsProperty('twist', twist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MethodImpl &&
            const DeepCollectionEquality().equals(other._mashTemp, _mashTemp) &&
            const DeepCollectionEquality()
                .equals(other._fermentation, _fermentation) &&
            (identical(other.twist, twist) || other.twist == twist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mashTemp),
      const DeepCollectionEquality().hash(_fermentation),
      twist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MethodImplCopyWith<_$MethodImpl> get copyWith =>
      __$$MethodImplCopyWithImpl<_$MethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MethodImplToJson(
      this,
    );
  }
}

abstract class _Method implements Method {
  const factory _Method(
      {required final List<MashTemp>? mashTemp,
      required final Map<String, dynamic>? fermentation,
      required final String? twist}) = _$MethodImpl;

  factory _Method.fromJson(Map<String, dynamic> json) = _$MethodImpl.fromJson;

  @override
  List<MashTemp>? get mashTemp;
  @override
  Map<String, dynamic>? get fermentation;
  @override
  String? get twist;
  @override
  @JsonKey(ignore: true)
  _$$MethodImplCopyWith<_$MethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
