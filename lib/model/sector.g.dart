// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectorModel _$SectorModelFromJson(Map<String, dynamic> json) => SectorModel(
      id: json['id'] as int,
      nameSector: json['nameSector'] as String,
      locationKey: json['locationKey'] as int?,
    );

Map<String, dynamic> _$SectorModelToJson(SectorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameSector': instance.nameSector,
      'locationKey': instance.locationKey,
    };
