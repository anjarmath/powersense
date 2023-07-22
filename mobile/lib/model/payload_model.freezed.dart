// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayloadModel _$PayloadModelFromJson(Map<String, dynamic> json) {
  return _PayloadModel.fromJson(json);
}

/// @nodoc
mixin _$PayloadModel {
  double get capacity => throw _privateConstructorUsedError;
  double get voltage_measured => throw _privateConstructorUsedError;
  double get current_measured => throw _privateConstructorUsedError;
  double get temperature_measured => throw _privateConstructorUsedError;
  double get current_load => throw _privateConstructorUsedError;
  double get voltage_load => throw _privateConstructorUsedError;
  double get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadModelCopyWith<PayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadModelCopyWith<$Res> {
  factory $PayloadModelCopyWith(
          PayloadModel value, $Res Function(PayloadModel) then) =
      _$PayloadModelCopyWithImpl<$Res, PayloadModel>;
  @useResult
  $Res call(
      {double capacity,
      double voltage_measured,
      double current_measured,
      double temperature_measured,
      double current_load,
      double voltage_load,
      double time});
}

/// @nodoc
class _$PayloadModelCopyWithImpl<$Res, $Val extends PayloadModel>
    implements $PayloadModelCopyWith<$Res> {
  _$PayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capacity = null,
    Object? voltage_measured = null,
    Object? current_measured = null,
    Object? temperature_measured = null,
    Object? current_load = null,
    Object? voltage_load = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as double,
      voltage_measured: null == voltage_measured
          ? _value.voltage_measured
          : voltage_measured // ignore: cast_nullable_to_non_nullable
              as double,
      current_measured: null == current_measured
          ? _value.current_measured
          : current_measured // ignore: cast_nullable_to_non_nullable
              as double,
      temperature_measured: null == temperature_measured
          ? _value.temperature_measured
          : temperature_measured // ignore: cast_nullable_to_non_nullable
              as double,
      current_load: null == current_load
          ? _value.current_load
          : current_load // ignore: cast_nullable_to_non_nullable
              as double,
      voltage_load: null == voltage_load
          ? _value.voltage_load
          : voltage_load // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PayloadModelCopyWith<$Res>
    implements $PayloadModelCopyWith<$Res> {
  factory _$$_PayloadModelCopyWith(
          _$_PayloadModel value, $Res Function(_$_PayloadModel) then) =
      __$$_PayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double capacity,
      double voltage_measured,
      double current_measured,
      double temperature_measured,
      double current_load,
      double voltage_load,
      double time});
}

/// @nodoc
class __$$_PayloadModelCopyWithImpl<$Res>
    extends _$PayloadModelCopyWithImpl<$Res, _$_PayloadModel>
    implements _$$_PayloadModelCopyWith<$Res> {
  __$$_PayloadModelCopyWithImpl(
      _$_PayloadModel _value, $Res Function(_$_PayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capacity = null,
    Object? voltage_measured = null,
    Object? current_measured = null,
    Object? temperature_measured = null,
    Object? current_load = null,
    Object? voltage_load = null,
    Object? time = null,
  }) {
    return _then(_$_PayloadModel(
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as double,
      voltage_measured: null == voltage_measured
          ? _value.voltage_measured
          : voltage_measured // ignore: cast_nullable_to_non_nullable
              as double,
      current_measured: null == current_measured
          ? _value.current_measured
          : current_measured // ignore: cast_nullable_to_non_nullable
              as double,
      temperature_measured: null == temperature_measured
          ? _value.temperature_measured
          : temperature_measured // ignore: cast_nullable_to_non_nullable
              as double,
      current_load: null == current_load
          ? _value.current_load
          : current_load // ignore: cast_nullable_to_non_nullable
              as double,
      voltage_load: null == voltage_load
          ? _value.voltage_load
          : voltage_load // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PayloadModel implements _PayloadModel {
  _$_PayloadModel(
      {required this.capacity,
      required this.voltage_measured,
      required this.current_measured,
      required this.temperature_measured,
      required this.current_load,
      required this.voltage_load,
      required this.time});

  factory _$_PayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_PayloadModelFromJson(json);

  @override
  final double capacity;
  @override
  final double voltage_measured;
  @override
  final double current_measured;
  @override
  final double temperature_measured;
  @override
  final double current_load;
  @override
  final double voltage_load;
  @override
  final double time;

  @override
  String toString() {
    return 'PayloadModel(capacity: $capacity, voltage_measured: $voltage_measured, current_measured: $current_measured, temperature_measured: $temperature_measured, current_load: $current_load, voltage_load: $voltage_load, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayloadModel &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.voltage_measured, voltage_measured) ||
                other.voltage_measured == voltage_measured) &&
            (identical(other.current_measured, current_measured) ||
                other.current_measured == current_measured) &&
            (identical(other.temperature_measured, temperature_measured) ||
                other.temperature_measured == temperature_measured) &&
            (identical(other.current_load, current_load) ||
                other.current_load == current_load) &&
            (identical(other.voltage_load, voltage_load) ||
                other.voltage_load == voltage_load) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, capacity, voltage_measured,
      current_measured, temperature_measured, current_load, voltage_load, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayloadModelCopyWith<_$_PayloadModel> get copyWith =>
      __$$_PayloadModelCopyWithImpl<_$_PayloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayloadModelToJson(
      this,
    );
  }
}

abstract class _PayloadModel implements PayloadModel {
  factory _PayloadModel(
      {required final double capacity,
      required final double voltage_measured,
      required final double current_measured,
      required final double temperature_measured,
      required final double current_load,
      required final double voltage_load,
      required final double time}) = _$_PayloadModel;

  factory _PayloadModel.fromJson(Map<String, dynamic> json) =
      _$_PayloadModel.fromJson;

  @override
  double get capacity;
  @override
  double get voltage_measured;
  @override
  double get current_measured;
  @override
  double get temperature_measured;
  @override
  double get current_load;
  @override
  double get voltage_load;
  @override
  double get time;
  @override
  @JsonKey(ignore: true)
  _$$_PayloadModelCopyWith<_$_PayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
