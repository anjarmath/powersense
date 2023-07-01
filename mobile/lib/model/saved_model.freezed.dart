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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  BackendPayload get payload => throw _privateConstructorUsedError;
  String get modelName => throw _privateConstructorUsedError;
  String get soh => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String name,
      BackendPayload payload,
      String modelName,
      String soh,
      String time,
      bool isSaved});

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
    Object? id = null,
    Object? name = null,
    Object? payload = null,
    Object? modelName = null,
    Object? soh = null,
    Object? time = null,
    Object? isSaved = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as BackendPayload,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      soh: null == soh
          ? _value.soh
          : soh // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call(
      {String id,
      String name,
      BackendPayload payload,
      String modelName,
      String soh,
      String time,
      bool isSaved});

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
    Object? id = null,
    Object? name = null,
    Object? payload = null,
    Object? modelName = null,
    Object? soh = null,
    Object? time = null,
    Object? isSaved = null,
  }) {
    return _then(_$_SavedModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as BackendPayload,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      soh: null == soh
          ? _value.soh
          : soh // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedModel implements _SavedModel {
  _$_SavedModel(
      {required this.id,
      required this.name,
      required this.payload,
      required this.modelName,
      required this.soh,
      required this.time,
      required this.isSaved});

  factory _$_SavedModel.fromJson(Map<String, dynamic> json) =>
      _$$_SavedModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final BackendPayload payload;
  @override
  final String modelName;
  @override
  final String soh;
  @override
  final String time;
  @override
  final bool isSaved;

  @override
  String toString() {
    return 'SavedModel(id: $id, name: $name, payload: $payload, modelName: $modelName, soh: $soh, time: $time, isSaved: $isSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.soh, soh) || other.soh == soh) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, payload, modelName, soh, time, isSaved);

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
      {required final String id,
      required final String name,
      required final BackendPayload payload,
      required final String modelName,
      required final String soh,
      required final String time,
      required final bool isSaved}) = _$_SavedModel;

  factory _SavedModel.fromJson(Map<String, dynamic> json) =
      _$_SavedModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  BackendPayload get payload;
  @override
  String get modelName;
  @override
  String get soh;
  @override
  String get time;
  @override
  bool get isSaved;
  @override
  @JsonKey(ignore: true)
  _$$_SavedModelCopyWith<_$_SavedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
