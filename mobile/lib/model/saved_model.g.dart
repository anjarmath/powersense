// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedModel _$$_SavedModelFromJson(Map<String, dynamic> json) =>
    _$_SavedModel(
      id: json['id'] as String,
      name: json['name'] as String,
      payload: BackendPayload.fromJson(json['payload'] as Map<String, dynamic>),
      modelName: json['modelName'] as String,
      soh: json['soh'] as String,
      time: json['time'] as String,
      isSaved: json['isSaved'] as bool,
    );

Map<String, dynamic> _$$_SavedModelToJson(_$_SavedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'payload': instance.payload,
      'modelName': instance.modelName,
      'soh': instance.soh,
      'time': instance.time,
      'isSaved': instance.isSaved,
    };
