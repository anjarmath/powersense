// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PayloadModel _$$_PayloadModelFromJson(Map<String, dynamic> json) =>
    _$_PayloadModel(
      capacity: (json['capacity'] as num).toDouble(),
      voltage_measured: (json['voltage_measured'] as num).toDouble(),
      current_measured: (json['current_measured'] as num).toDouble(),
      temperature_measured: (json['temperature_measured'] as num).toDouble(),
      current_load: (json['current_load'] as num).toDouble(),
      voltage_load: (json['voltage_load'] as num).toDouble(),
      time: (json['time'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PayloadModelToJson(_$_PayloadModel instance) =>
    <String, dynamic>{
      'capacity': instance.capacity,
      'voltage_measured': instance.voltage_measured,
      'current_measured': instance.current_measured,
      'temperature_measured': instance.temperature_measured,
      'current_load': instance.current_load,
      'voltage_load': instance.voltage_load,
      'time': instance.time,
    };
