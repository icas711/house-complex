// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'housing_complex_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HousingComplexItems _$HousingComplexItemsFromJson(Map<String, dynamic> json) {
  return _HousingComplexItems.fromJson(json);
}

/// @nodoc
mixin _$HousingComplexItems {
  List<Item> get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HousingComplexItemsCopyWith<HousingComplexItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HousingComplexItemsCopyWith<$Res> {
  factory $HousingComplexItemsCopyWith(
          HousingComplexItems value, $Res Function(HousingComplexItems) then) =
      _$HousingComplexItemsCopyWithImpl<$Res, HousingComplexItems>;
  @useResult
  $Res call({List<Item> payload});
}

/// @nodoc
class _$HousingComplexItemsCopyWithImpl<$Res, $Val extends HousingComplexItems>
    implements $HousingComplexItemsCopyWith<$Res> {
  _$HousingComplexItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HousingComplexItemsImplCopyWith<$Res>
    implements $HousingComplexItemsCopyWith<$Res> {
  factory _$$HousingComplexItemsImplCopyWith(_$HousingComplexItemsImpl value,
          $Res Function(_$HousingComplexItemsImpl) then) =
      __$$HousingComplexItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> payload});
}

/// @nodoc
class __$$HousingComplexItemsImplCopyWithImpl<$Res>
    extends _$HousingComplexItemsCopyWithImpl<$Res, _$HousingComplexItemsImpl>
    implements _$$HousingComplexItemsImplCopyWith<$Res> {
  __$$HousingComplexItemsImplCopyWithImpl(_$HousingComplexItemsImpl _value,
      $Res Function(_$HousingComplexItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$HousingComplexItemsImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HousingComplexItemsImpl implements _HousingComplexItems {
  const _$HousingComplexItemsImpl({required this.payload});

  factory _$HousingComplexItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HousingComplexItemsImplFromJson(json);

  @override
  final List<Item> payload;

  @override
  String toString() {
    return 'HousingComplexItems(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HousingComplexItemsImpl &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HousingComplexItemsImplCopyWith<_$HousingComplexItemsImpl> get copyWith =>
      __$$HousingComplexItemsImplCopyWithImpl<_$HousingComplexItemsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HousingComplexItemsImplToJson(
      this,
    );
  }
}

abstract class _HousingComplexItems implements HousingComplexItems {
  const factory _HousingComplexItems({required final List<Item> payload}) =
      _$HousingComplexItemsImpl;

  factory _HousingComplexItems.fromJson(Map<String, dynamic> json) =
      _$HousingComplexItemsImpl.fromJson;

  @override
  List<Item> get payload;
  @override
  @JsonKey(ignore: true)
  _$$HousingComplexItemsImplCopyWith<_$HousingComplexItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get title => throw _privateConstructorUsedError;
  int get remaining_points => throw _privateConstructorUsedError;
  int get total_points_count => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String title,
      int remaining_points,
      int total_points_count,
      List<Map<String, dynamic>> points});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? remaining_points = null,
    Object? total_points_count = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      remaining_points: null == remaining_points
          ? _value.remaining_points
          : remaining_points // ignore: cast_nullable_to_non_nullable
              as int,
      total_points_count: null == total_points_count
          ? _value.total_points_count
          : total_points_count // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int remaining_points,
      int total_points_count,
      List<Map<String, dynamic>> points});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? remaining_points = null,
    Object? total_points_count = null,
    Object? points = null,
  }) {
    return _then(_$ItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      remaining_points: null == remaining_points
          ? _value.remaining_points
          : remaining_points // ignore: cast_nullable_to_non_nullable
              as int,
      total_points_count: null == total_points_count
          ? _value.total_points_count
          : total_points_count // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {required this.title,
      required this.remaining_points,
      required this.total_points_count,
      required this.points});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String title;
  @override
  final int remaining_points;
  @override
  final int total_points_count;
  @override
  final List<Map<String, dynamic>> points;

  @override
  String toString() {
    return 'Item(title: $title, remaining_points: $remaining_points, total_points_count: $total_points_count, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.remaining_points, remaining_points) ||
                other.remaining_points == remaining_points) &&
            (identical(other.total_points_count, total_points_count) ||
                other.total_points_count == total_points_count) &&
            const DeepCollectionEquality().equals(other.points, points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, remaining_points,
      total_points_count, const DeepCollectionEquality().hash(points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final String title,
      required final int remaining_points,
      required final int total_points_count,
      required final List<Map<String, dynamic>> points}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String get title;
  @override
  int get remaining_points;
  @override
  int get total_points_count;
  @override
  List<Map<String, dynamic>> get points;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
