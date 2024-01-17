// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeerItemImpl _$$BeerItemImplFromJson(Map<String, dynamic> json) =>
    _$BeerItemImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      tagline: json['tagline'] as String?,
      firstBrewed: json['firstBrewed'] as String?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
      abv: json['abv'] as num?,
      ibu: json['ibu'] as num?,
      targetFg: json['targetFg'] as num?,
      targetOg: json['targetOg'] as num?,
      ebc: (json['ebc'] as num?)?.toDouble(),
      srm: (json['srm'] as num?)?.toDouble(),
      ph: (json['ph'] as num?)?.toDouble(),
      attenuationLevel: (json['attenuationLevel'] as num?)?.toDouble(),
      beerVolume: json['volume'] == null
          ? null
          : BeerVolume.fromJson(json['volume'] as Map<String, dynamic>),
      boilVolume: json['boilVolume'] == null
          ? null
          : BeerVolume.fromJson(json['boilVolume'] as Map<String, dynamic>),
      method: json['method'] == null
          ? null
          : Method.fromJson(json['method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BeerItemImplToJson(_$BeerItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tagline': instance.tagline,
      'firstBrewed': instance.firstBrewed,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'abv': instance.abv,
      'ibu': instance.ibu,
      'targetFg': instance.targetFg,
      'targetOg': instance.targetOg,
      'ebc': instance.ebc,
      'srm': instance.srm,
      'ph': instance.ph,
      'attenuationLevel': instance.attenuationLevel,
      'volume': instance.beerVolume,
      'boilVolume': instance.boilVolume,
      'method': instance.method,
    };
