// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backend_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BackendPayload _$BackendPayloadFromJson(Map<String, dynamic> json) {
  return _BackendPayload.fromJson(json);
}

/// @nodoc
mixin _$BackendPayload {
  PayloadModel get payload => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackendPayloadCopyWith<BackendPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackendPayloadCopyWith<$Res> {
  factory $BackendPayloadCopyWith(
          BackendPayload value, $Res Function(BackendPayload) then) =
      _$BackendPayloadCopyWithImpl<$Res, BackendPayload>;
  @useResult
  $Res call({PayloadModel payload, String model});

  $PayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class _$BackendPayloadCopyWithImpl<$Res, $Val extends BackendPayload>
    implements $BackendPayloadCopyWith<$Res> {
  _$BackendPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PayloadModel,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadModelCopyWith<$Res> get payload {
    return $PayloadModelCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BackendPayloadCopyWith<$Res>
    implements $BackendPayloadCopyWith<$Res> {
  factory _$$_BackendPayloadCopyWith(
          _$_BackendPayload value, $Res Function(_$_BackendPayload) then) =
      __$$_BackendPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PayloadModel payload, String model});

  @override
  $PayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_BackendPayloadCopyWithImpl<$Res>
    extends _$BackendPayloadCopyWithImpl<$Res, _$_BackendPayload>
    implements _$$_BackendPayloadCopyWith<$Res> {
  __$$_BackendPayloadCopyWithImpl(
      _$_BackendPayload _value, $Res Function(_$_BackendPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? model = null,
  }) {
    return _then(_$_BackendPayload(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PayloadModel,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BackendPayload implements _BackendPayload {
  _$_BackendPayload({required this.payload, required this.model});

  factory _$_BackendPayload.fromJson(Map<String, dynamic> json) =>
      _$$_BackendPayloadFromJson(json);

  @override
  final PayloadModel payload;
  @override
  final String model;

  @override
  String toString() {
    return 'BackendPayload(payload: $payload, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BackendPayload &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BackendPayloadCopyWith<_$_BackendPayload> get copyWith =>
      __$$_BackendPayloadCopyWithImpl<_$_BackendPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BackendPayloadToJson(
      this,
    );
  }
}

abstract class _BackendPayload implements BackendPayload {
  factory _BackendPayload(
      {required final PayloadModel payload,
      required final String model}) = _$_BackendPayload;

  factory _BackendPayload.fromJson(Map<String, dynamic> json) =
      _$_BackendPayload.fromJson;

  @override
  PayloadModel get payload;
  @override
  String get model;
  @override
  @JsonKey(ignore: true)
  _$$_BackendPayloadCopyWith<_$_BackendPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
