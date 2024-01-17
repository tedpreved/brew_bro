// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beer_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeerItem _$BeerItemFromJson(Map<String, dynamic> json) {
  return _BeerItem.fromJson(json);
}

/// @nodoc
mixin _$BeerItem {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get firstBrewed => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  num? get abv => throw _privateConstructorUsedError;
  num? get ibu => throw _privateConstructorUsedError;
  num? get targetFg => throw _privateConstructorUsedError;
  num? get targetOg => throw _privateConstructorUsedError;
  double? get ebc => throw _privateConstructorUsedError;
  double? get srm => throw _privateConstructorUsedError;
  double? get ph => throw _privateConstructorUsedError;
  double? get attenuationLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'volume')
  BeerVolume? get beerVolume => throw _privateConstructorUsedError;
  BeerVolume? get boilVolume => throw _privateConstructorUsedError;
  Method? get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerItemCopyWith<BeerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerItemCopyWith<$Res> {
  factory $BeerItemCopyWith(BeerItem value, $Res Function(BeerItem) then) =
      _$BeerItemCopyWithImpl<$Res, BeerItem>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? tagline,
      String? firstBrewed,
      String? description,
      @JsonKey(name: 'image_url') String? imageUrl,
      num? abv,
      num? ibu,
      num? targetFg,
      num? targetOg,
      double? ebc,
      double? srm,
      double? ph,
      double? attenuationLevel,
      @JsonKey(name: 'volume') BeerVolume? beerVolume,
      BeerVolume? boilVolume,
      Method? method});

  $BeerVolumeCopyWith<$Res>? get beerVolume;
  $BeerVolumeCopyWith<$Res>? get boilVolume;
  $MethodCopyWith<$Res>? get method;
}

/// @nodoc
class _$BeerItemCopyWithImpl<$Res, $Val extends BeerItem>
    implements $BeerItemCopyWith<$Res> {
  _$BeerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? tagline = freezed,
    Object? firstBrewed = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? abv = freezed,
    Object? ibu = freezed,
    Object? targetFg = freezed,
    Object? targetOg = freezed,
    Object? ebc = freezed,
    Object? srm = freezed,
    Object? ph = freezed,
    Object? attenuationLevel = freezed,
    Object? beerVolume = freezed,
    Object? boilVolume = freezed,
    Object? method = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      firstBrewed: freezed == firstBrewed
          ? _value.firstBrewed
          : firstBrewed // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      abv: freezed == abv
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as num?,
      ibu: freezed == ibu
          ? _value.ibu
          : ibu // ignore: cast_nullable_to_non_nullable
              as num?,
      targetFg: freezed == targetFg
          ? _value.targetFg
          : targetFg // ignore: cast_nullable_to_non_nullable
              as num?,
      targetOg: freezed == targetOg
          ? _value.targetOg
          : targetOg // ignore: cast_nullable_to_non_nullable
              as num?,
      ebc: freezed == ebc
          ? _value.ebc
          : ebc // ignore: cast_nullable_to_non_nullable
              as double?,
      srm: freezed == srm
          ? _value.srm
          : srm // ignore: cast_nullable_to_non_nullable
              as double?,
      ph: freezed == ph
          ? _value.ph
          : ph // ignore: cast_nullable_to_non_nullable
              as double?,
      attenuationLevel: freezed == attenuationLevel
          ? _value.attenuationLevel
          : attenuationLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      beerVolume: freezed == beerVolume
          ? _value.beerVolume
          : beerVolume // ignore: cast_nullable_to_non_nullable
              as BeerVolume?,
      boilVolume: freezed == boilVolume
          ? _value.boilVolume
          : boilVolume // ignore: cast_nullable_to_non_nullable
              as BeerVolume?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeerVolumeCopyWith<$Res>? get beerVolume {
    if (_value.beerVolume == null) {
      return null;
    }

    return $BeerVolumeCopyWith<$Res>(_value.beerVolume!, (value) {
      return _then(_value.copyWith(beerVolume: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BeerVolumeCopyWith<$Res>? get boilVolume {
    if (_value.boilVolume == null) {
      return null;
    }

    return $BeerVolumeCopyWith<$Res>(_value.boilVolume!, (value) {
      return _then(_value.copyWith(boilVolume: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MethodCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $MethodCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeerItemImplCopyWith<$Res>
    implements $BeerItemCopyWith<$Res> {
  factory _$$BeerItemImplCopyWith(
          _$BeerItemImpl value, $Res Function(_$BeerItemImpl) then) =
      __$$BeerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? tagline,
      String? firstBrewed,
      String? description,
      @JsonKey(name: 'image_url') String? imageUrl,
      num? abv,
      num? ibu,
      num? targetFg,
      num? targetOg,
      double? ebc,
      double? srm,
      double? ph,
      double? attenuationLevel,
      @JsonKey(name: 'volume') BeerVolume? beerVolume,
      BeerVolume? boilVolume,
      Method? method});

  @override
  $BeerVolumeCopyWith<$Res>? get beerVolume;
  @override
  $BeerVolumeCopyWith<$Res>? get boilVolume;
  @override
  $MethodCopyWith<$Res>? get method;
}

/// @nodoc
class __$$BeerItemImplCopyWithImpl<$Res>
    extends _$BeerItemCopyWithImpl<$Res, _$BeerItemImpl>
    implements _$$BeerItemImplCopyWith<$Res> {
  __$$BeerItemImplCopyWithImpl(
      _$BeerItemImpl _value, $Res Function(_$BeerItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? tagline = freezed,
    Object? firstBrewed = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? abv = freezed,
    Object? ibu = freezed,
    Object? targetFg = freezed,
    Object? targetOg = freezed,
    Object? ebc = freezed,
    Object? srm = freezed,
    Object? ph = freezed,
    Object? attenuationLevel = freezed,
    Object? beerVolume = freezed,
    Object? boilVolume = freezed,
    Object? method = freezed,
  }) {
    return _then(_$BeerItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      firstBrewed: freezed == firstBrewed
          ? _value.firstBrewed
          : firstBrewed // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      abv: freezed == abv
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as num?,
      ibu: freezed == ibu
          ? _value.ibu
          : ibu // ignore: cast_nullable_to_non_nullable
              as num?,
      targetFg: freezed == targetFg
          ? _value.targetFg
          : targetFg // ignore: cast_nullable_to_non_nullable
              as num?,
      targetOg: freezed == targetOg
          ? _value.targetOg
          : targetOg // ignore: cast_nullable_to_non_nullable
              as num?,
      ebc: freezed == ebc
          ? _value.ebc
          : ebc // ignore: cast_nullable_to_non_nullable
              as double?,
      srm: freezed == srm
          ? _value.srm
          : srm // ignore: cast_nullable_to_non_nullable
              as double?,
      ph: freezed == ph
          ? _value.ph
          : ph // ignore: cast_nullable_to_non_nullable
              as double?,
      attenuationLevel: freezed == attenuationLevel
          ? _value.attenuationLevel
          : attenuationLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      beerVolume: freezed == beerVolume
          ? _value.beerVolume
          : beerVolume // ignore: cast_nullable_to_non_nullable
              as BeerVolume?,
      boilVolume: freezed == boilVolume
          ? _value.boilVolume
          : boilVolume // ignore: cast_nullable_to_non_nullable
              as BeerVolume?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeerItemImpl with DiagnosticableTreeMixin implements _BeerItem {
  const _$BeerItemImpl(
      {required this.id,
      required this.name,
      required this.tagline,
      required this.firstBrewed,
      required this.description,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.abv,
      required this.ibu,
      required this.targetFg,
      required this.targetOg,
      required this.ebc,
      required this.srm,
      required this.ph,
      required this.attenuationLevel,
      @JsonKey(name: 'volume') required this.beerVolume,
      required this.boilVolume,
      required this.method});

  factory _$BeerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeerItemImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? tagline;
  @override
  final String? firstBrewed;
  @override
  final String? description;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  final num? abv;
  @override
  final num? ibu;
  @override
  final num? targetFg;
  @override
  final num? targetOg;
  @override
  final double? ebc;
  @override
  final double? srm;
  @override
  final double? ph;
  @override
  final double? attenuationLevel;
  @override
  @JsonKey(name: 'volume')
  final BeerVolume? beerVolume;
  @override
  final BeerVolume? boilVolume;
  @override
  final Method? method;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeerItem(id: $id, name: $name, tagline: $tagline, firstBrewed: $firstBrewed, description: $description, imageUrl: $imageUrl, abv: $abv, ibu: $ibu, targetFg: $targetFg, targetOg: $targetOg, ebc: $ebc, srm: $srm, ph: $ph, attenuationLevel: $attenuationLevel, beerVolume: $beerVolume, boilVolume: $boilVolume, method: $method)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BeerItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tagline', tagline))
      ..add(DiagnosticsProperty('firstBrewed', firstBrewed))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('abv', abv))
      ..add(DiagnosticsProperty('ibu', ibu))
      ..add(DiagnosticsProperty('targetFg', targetFg))
      ..add(DiagnosticsProperty('targetOg', targetOg))
      ..add(DiagnosticsProperty('ebc', ebc))
      ..add(DiagnosticsProperty('srm', srm))
      ..add(DiagnosticsProperty('ph', ph))
      ..add(DiagnosticsProperty('attenuationLevel', attenuationLevel))
      ..add(DiagnosticsProperty('beerVolume', beerVolume))
      ..add(DiagnosticsProperty('boilVolume', boilVolume))
      ..add(DiagnosticsProperty('method', method));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeerItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.firstBrewed, firstBrewed) ||
                other.firstBrewed == firstBrewed) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.abv, abv) || other.abv == abv) &&
            (identical(other.ibu, ibu) || other.ibu == ibu) &&
            (identical(other.targetFg, targetFg) ||
                other.targetFg == targetFg) &&
            (identical(other.targetOg, targetOg) ||
                other.targetOg == targetOg) &&
            (identical(other.ebc, ebc) || other.ebc == ebc) &&
            (identical(other.srm, srm) || other.srm == srm) &&
            (identical(other.ph, ph) || other.ph == ph) &&
            (identical(other.attenuationLevel, attenuationLevel) ||
                other.attenuationLevel == attenuationLevel) &&
            (identical(other.beerVolume, beerVolume) ||
                other.beerVolume == beerVolume) &&
            (identical(other.boilVolume, boilVolume) ||
                other.boilVolume == boilVolume) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      tagline,
      firstBrewed,
      description,
      imageUrl,
      abv,
      ibu,
      targetFg,
      targetOg,
      ebc,
      srm,
      ph,
      attenuationLevel,
      beerVolume,
      boilVolume,
      method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeerItemImplCopyWith<_$BeerItemImpl> get copyWith =>
      __$$BeerItemImplCopyWithImpl<_$BeerItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeerItemImplToJson(
      this,
    );
  }
}

abstract class _BeerItem implements BeerItem {
  const factory _BeerItem(
      {required final int id,
      required final String? name,
      required final String? tagline,
      required final String? firstBrewed,
      required final String? description,
      @JsonKey(name: 'image_url') required final String? imageUrl,
      required final num? abv,
      required final num? ibu,
      required final num? targetFg,
      required final num? targetOg,
      required final double? ebc,
      required final double? srm,
      required final double? ph,
      required final double? attenuationLevel,
      @JsonKey(name: 'volume') required final BeerVolume? beerVolume,
      required final BeerVolume? boilVolume,
      required final Method? method}) = _$BeerItemImpl;

  factory _BeerItem.fromJson(Map<String, dynamic> json) =
      _$BeerItemImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get tagline;
  @override
  String? get firstBrewed;
  @override
  String? get description;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  num? get abv;
  @override
  num? get ibu;
  @override
  num? get targetFg;
  @override
  num? get targetOg;
  @override
  double? get ebc;
  @override
  double? get srm;
  @override
  double? get ph;
  @override
  double? get attenuationLevel;
  @override
  @JsonKey(name: 'volume')
  BeerVolume? get beerVolume;
  @override
  BeerVolume? get boilVolume;
  @override
  Method? get method;
  @override
  @JsonKey(ignore: true)
  _$$BeerItemImplCopyWith<_$BeerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
