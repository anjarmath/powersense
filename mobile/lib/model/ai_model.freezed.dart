// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiModel _$AiModelFromJson(Map<String, dynamic> json) {
  return _AiModel.fromJson(json);
}

/// @nodoc
mixin _$AiModel {
  String get model => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiModelCopyWith<AiModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiModelCopyWith<$Res> {
  factory $AiModelCopyWith(AiModel value, $Res Function(AiModel) then) =
      _$AiModelCopyWithImpl<$Res, AiModel>;
  @useResult
  $Res call({String model, String desc});
}

/// @nodoc
class _$AiModelCopyWithImpl<$Res, $Val extends AiModel>
    implements $AiModelCopyWith<$Res> {
  _$AiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? desc = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AiModelCopyWith<$Res> implements $AiModelCopyWith<$Res> {
  factory _$$_AiModelCopyWith(
          _$_AiModel value, $Res Function(_$_AiModel) then) =
      __$$_AiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String model, String desc});
}

/// @nodoc
class __$$_AiModelCopyWithImpl<$Res>
    extends _$AiModelCopyWithImpl<$Res, _$_AiModel>
    implements _$$_AiModelCopyWith<$Res> {
  __$$_AiModelCopyWithImpl(_$_AiModel _value, $Res Function(_$_AiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? desc = null,
  }) {
    return _then(_$_AiModel(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AiModel implements _AiModel {
  _$_AiModel({required this.model, required this.desc});

  factory _$_AiModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiModelFromJson(json);

  @override
  final String model;
  @override
  final String desc;

  @override
  String toString() {
    return 'AiModel(model: $model, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiModel &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, model, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiModelCopyWith<_$_AiModel> get copyWith =>
      __$$_AiModelCopyWithImpl<_$_AiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiModelToJson(
      this,
    );
  }
}

abstract class _AiModel implements AiModel {
  factory _AiModel({required final String model, required final String desc}) =
      _$_AiModel;

  factory _AiModel.fromJson(Map<String, dynamic> json) = _$_AiModel.fromJson;

  @override
  String get model;
  @override
  String get desc;
  @override
  @JsonKey(ignore: true)
  _$$_AiModelCopyWith<_$_AiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
