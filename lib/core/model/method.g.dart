// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MethodImpl _$$MethodImplFromJson(Map<String, dynamic> json) => _$MethodImpl(
      mashTemp: (json['mashTemp'] as List<dynamic>?)
          ?.map((e) => MashTemp.fromJson(e as Map<String, dynamic>))
          .toList(),
      fermentation: json['fermentation'] as Map<String, dynamic>?,
      twist: json['twist'] as String?,
    );

Map<String, dynamic> _$$MethodImplToJson(_$MethodImpl instance) =>
    <String, dynamic>{
      'mashTemp': instance.mashTemp,
      'fermentation': instance.fermentation,
      'twist': instance.twist,
    };
