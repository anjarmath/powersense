// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedModel _$SavedModelFromJson(Map<String, dynamic> json) {
  return _SavedModel.fromJson(json);
}

/// @nodoc
mixin _$SavedModel {
  String get name => throw _privateConstructorUsedError;
  BackendPayload get payload => throw _privateConstructorUsedError;
  String get soh => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedModelCopyWith<SavedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedModelCopyWith<$Res> {
  factory $SavedModelCopyWith(
          SavedModel value, $Res Function(SavedModel) then) =
      _$SavedModelCopyWithImpl<$Res, SavedModel>;
  @useResult
  $Res call({String name, BackendPayload payload, String soh, String time});

  $BackendPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$SavedModelCopyWithImpl<$Res, $Val extends SavedModel>
    implements $SavedModelCopyWith<$Res> {
  _$SavedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? payload = null,
    Object? soh = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as BackendPayload,
      soh: null == soh
          ? _value.soh
          : soh // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BackendPayloadCopyWith<$Res> get payload {
    return $BackendPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SavedModelCopyWith<$Res>
    implements $SavedModelCopyWith<$Res> {
  factory _$$_SavedModelCopyWith(
          _$_SavedModel value, $Res Function(_$_SavedModel) then) =
      __$$_SavedModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, BackendPayload payload, String soh, String time});

  @override
  $BackendPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_SavedModelCopyWithImpl<$Res>
    extends _$SavedModelCopyWithImpl<$Res, _$_SavedModel>
    implements _$$_SavedModelCopyWith<$Res> {
  __$$_SavedModelCopyWithImpl(
      _$_SavedModel _value, $Res Function(_$_SavedModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? payload = null,
    Object? soh = null,
    Object? time = null,
  }) {
    return _then(_$_SavedModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as BackendPayload,
      soh: null == soh
          ? _value.soh
          : soh // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedModel implements _SavedModel {
  _$_SavedModel(
      {required this.name,
      required this.payload,
      required this.soh,
      required this.time});

  factory _$_SavedModel.fromJson(Map<String, dynamic> json) =>
      _$$_SavedModelFromJson(json);

  @override
  final String name;
  @override
  final BackendPayload payload;
  @override
  final String soh;
  @override
  final String time;

  @override
  String toString() {
    return 'SavedModel(name: $name, payload: $payload, soh: $soh, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.soh, soh) || other.soh == soh) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, payload, soh, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedModelCopyWith<_$_SavedModel> get copyWith =>
      __$$_SavedModelCopyWithImpl<_$_SavedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedModelToJson(
      this,
    );
  }
}

abstract class _SavedModel implements SavedModel {
  factory _SavedModel(
      {required final String name,
      required final BackendPayload payload,
      required final String soh,
      required final String time}) = _$_SavedModel;

  factory _SavedModel.fromJson(Map<String, dynamic> json) =
      _$_SavedModel.fromJson;

  @override
  String get name;
  @override
  BackendPayload get payload;
  @override
  String get soh;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$_SavedModelCopyWith<_$_SavedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
