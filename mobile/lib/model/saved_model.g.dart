// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedModel _$$_SavedModelFromJson(Map<String, dynamic> json) =>
    _$_SavedModel(
      name: json['name'] as String,
      payload: BackendPayload.fromJson(json['payload'] as Map<String, dynamic>),
      soh: json['soh'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$$_SavedModelToJson(_$_SavedModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'payload': instance.payload,
      'soh': instance.soh,
      'time': instance.time,
    };
