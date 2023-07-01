import 'package:freezed_annotation/freezed_annotation.dart';

part 'payload_model.freezed.dart';
part 'payload_model.g.dart';

@freezed
class PayloadModel with _$PayloadModel {
  factory PayloadModel({
    required double capacity,
    required double voltage_measured,
    required double current_measured,
    required double temperature_measured,
    required double current_load,
    required double voltage_load,
    required double time,
  }) = _PayloadModel;

  factory PayloadModel.fromJson(Map<String, dynamic> json) =>
      _$PayloadModelFromJson(json);
  factory PayloadModel.emptyModel() {
    return PayloadModel(
      capacity: 0,
      voltage_measured: 0,
      current_measured: 0,
      temperature_measured: 0,
      current_load: 0,
      voltage_load: 0,
      time: 0,
    );
  }
}
