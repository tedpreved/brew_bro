// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mash_temp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MashTempImpl _$$MashTempImplFromJson(Map<String, dynamic> json) =>
    _$MashTempImpl(
      temperature: json['temp'] == null
          ? null
          : BeerVolume.fromJson(json['temp'] as Map<String, dynamic>),
      duration: json['duration'] as int?,
    );

Map<String, dynamic> _$$MashTempImplToJson(_$MashTempImpl instance) =>
    <String, dynamic>{
      'temp': instance.temperature,
      'duration': instance.duration,
    };
