// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'housing_complex_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HousingComplexItemsImpl _$$HousingComplexItemsImplFromJson(
        Map<String, dynamic> json) =>
    _$HousingComplexItemsImpl(
      payload: (json['payload'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HousingComplexItemsImplToJson(
        _$HousingComplexItemsImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      title: json['title'] as String,
      remaining_points: json['remaining_points'] as int,
      total_points_count: json['total_points_count'] as int,
      points: (json['points'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'remaining_points': instance.remaining_points,
      'total_points_count': instance.total_points_count,
      'points': instance.points,
    };
