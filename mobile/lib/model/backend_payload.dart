import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:powersense/model/payload_model.dart';

part 'backend_payload.freezed.dart';
part 'backend_payload.g.dart';

@freezed
class BackendPayload with _$BackendPayload {
  factory BackendPayload({
    required PayloadModel payload,
    required String model,
  }) = _BackendPayload;

  factory BackendPayload.fromJson(Map<String, dynamic> json) =>
      _$BackendPayloadFromJson(json);
}
