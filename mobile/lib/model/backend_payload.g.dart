// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BackendPayload _$$_BackendPayloadFromJson(Map<String, dynamic> json) =>
    _$_BackendPayload(
      payload: PayloadModel.fromJson(json['payload'] as Map<String, dynamic>),
      model: json['model'] as String,
    );

Map<String, dynamic> _$$_BackendPayloadToJson(_$_BackendPayload instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'model': instance.model,
    };
