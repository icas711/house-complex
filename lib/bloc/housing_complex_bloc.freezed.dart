// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'housing_complex_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HousingComplexEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HousingComplexEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HousingComplexEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HousingComplexEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HousingComplexEventCopyWith<$Res> {
  factory $HousingComplexEventCopyWith(
          HousingComplexEvent value, $Res Function(HousingComplexEvent) then) =
      _$HousingComplexEventCopyWithImpl<$Res, HousingComplexEvent>;
}

/// @nodoc
class _$HousingComplexEventCopyWithImpl<$Res, $Val extends HousingComplexEvent>
    implements $HousingComplexEventCopyWith<$Res> {
  _$HousingComplexEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HousingComplexEventFetchImplCopyWith<$Res> {
  factory _$$HousingComplexEventFetchImplCopyWith(
          _$HousingComplexEventFetchImpl value,
          $Res Function(_$HousingComplexEventFetchImpl) then) =
      __$$HousingComplexEventFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HousingComplexEventFetchImplCopyWithImpl<$Res>
    extends _$HousingComplexEventCopyWithImpl<$Res,
        _$HousingComplexEventFetchImpl>
    implements _$$HousingComplexEventFetchImplCopyWith<$Res> {
  __$$HousingComplexEventFetchImplCopyWithImpl(
      _$HousingComplexEventFetchImpl _value,
      $Res Function(_$HousingComplexEventFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HousingComplexEventFetchImpl implements HousingComplexEventFetch {
  _$HousingComplexEventFetchImpl();

  @override
  String toString() {
    return 'HousingComplexEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HousingComplexEventFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HousingComplexEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HousingComplexEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HousingComplexEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class HousingComplexEventFetch implements HousingComplexEvent {
  factory HousingComplexEventFetch() = _$HousingComplexEventFetchImpl;
}

HousingComplexState _$HousingComplexStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return HousingComplexStateLoading.fromJson(json);
    case 'loaded':
      return HousingComplexStateLoaded.fromJson(json);
    case 'error':
      return HousingComplexStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HousingComplexState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HousingComplexState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HousingComplexItems housingComplexItemsLoaded)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HousingComplexItems housingComplexItemsLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HousingComplexItems housingComplexItemsLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HousingComplexStateLoading value) loading,
    required TResult Function(HousingComplexStateLoaded value) loaded,
    required TResult Function(HousingComplexStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HousingComplexStateLoading value)? loading,
    TResult? Function(HousingComplexStateLoaded value)? loaded,
    TResult? Function(HousingComplexStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HousingComplexStateLoading value)? loading,
    TResult Function(HousingComplexStateLoaded value)? loaded,
    TResult Function(HousingComplexStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HousingComplexStateCopyWith<$Res> {
  factory $HousingComplexStateCopyWith(
          HousingComplexState value, $Res Function(HousingComplexState) then) =
      _$HousingComplexStateCopyWithImpl<$Res, HousingComplexState>;
}

/// @nodoc
class _$HousingComplexStateCopyWithImpl<$Res, $Val extends HousingComplexState>
    implements $HousingComplexStateCopyWith<$Res> {
  _$HousingComplexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HousingComplexStateLoadingImplCopyWith<$Res> {
  factory _$$HousingComplexStateLoadingImplCopyWith(
          _$HousingComplexStateLoadingImpl value,
          $Res Function(_$HousingComplexStateLoadingImpl) then) =
      __$$HousingComplexStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HousingComplexStateLoadingImplCopyWithImpl<$Res>
    extends _$HousingComplexStateCopyWithImpl<$Res,
        _$HousingComplexStateLoadingImpl>
    implements _$$HousingComplexStateLoadingImplCopyWith<$Res> {
  __$$HousingComplexStateLoadingImplCopyWithImpl(
      _$HousingComplexStateLoadingImpl _value,
      $Res Function(_$HousingComplexStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HousingComplexStateLoadingImpl implements HousingComplexStateLoading {
  const _$HousingComplexStateLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$HousingComplexStateLoadingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HousingComplexStateLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HousingComplexState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HousingComplexStateLoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HousingComplexItems housingComplexItemsLoaded)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HousingComplexItems housingComplexItemsLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HousingComplexItems housingComplexItemsLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HousingComplexStateLoading value) loading,
    required TResult Function(HousingComplexStateLoaded value) loaded,
    required TResult Function(HousingComplexStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HousingComplexStateLoading value)? loading,
    TResult? Function(HousingComplexStateLoaded value)? loaded,
    TResult? Function(HousingComplexStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HousingComplexStateLoading value)? loading,
    TResult Function(HousingComplexStateLoaded value)? loaded,
    TResult Function(HousingComplexStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HousingComplexStateLoadingImplToJson(
      this,
    );
  }
}

abstract class HousingComplexStateLoading implements HousingComplexState {
  const factory HousingComplexStateLoading() = _$HousingComplexStateLoadingImpl;

  factory HousingComplexStateLoading.fromJson(Map<String, dynamic> json) =
      _$HousingComplexStateLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$HousingComplexStateLoadedImplCopyWith<$Res> {
  factory _$$HousingComplexStateLoadedImplCopyWith(
          _$HousingComplexStateLoadedImpl value,
          $Res Function(_$HousingComplexStateLoadedImpl) then) =
      __$$HousingComplexStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HousingComplexItems housingComplexItemsLoaded});

  $HousingComplexItemsCopyWith<$Res> get housingComplexItemsLoaded;
}

/// @nodoc
class __$$HousingComplexStateLoadedImplCopyWithImpl<$Res>
    extends _$HousingComplexStateCopyWithImpl<$Res,
        _$HousingComplexStateLoadedImpl>
    implements _$$HousingComplexStateLoadedImplCopyWith<$Res> {
  __$$HousingComplexStateLoadedImplCopyWithImpl(
      _$HousingComplexStateLoadedImpl _value,
      $Res Function(_$HousingComplexStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? housingComplexItemsLoaded = null,
  }) {
    return _then(_$HousingComplexStateLoadedImpl(
      housingComplexItemsLoaded: null == housingComplexItemsLoaded
          ? _value.housingComplexItemsLoaded
          : housingComplexItemsLoaded // ignore: cast_nullable_to_non_nullable
              as HousingComplexItems,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HousingComplexItemsCopyWith<$Res> get housingComplexItemsLoaded {
    return $HousingComplexItemsCopyWith<$Res>(_value.housingComplexItemsLoaded,
        (value) {
      return _then(_value.copyWith(housingComplexItemsLoaded: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$HousingComplexStateLoadedImpl implements HousingComplexStateLoaded {
  const _$HousingComplexStateLoadedImpl(
      {required this.housingComplexItemsLoaded, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$HousingComplexStateLoadedImpl.fromJson(Map<String, dynamic> json) =>
      _$$HousingComplexStateLoadedImplFromJson(json);

  @override
  final HousingComplexItems housingComplexItemsLoaded;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HousingComplexState.loaded(housingComplexItemsLoaded: $housingComplexItemsLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HousingComplexStateLoadedImpl &&
            (identical(other.housingComplexItemsLoaded,
                    housingComplexItemsLoaded) ||
                other.housingComplexItemsLoaded == housingComplexItemsLoaded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, housingComplexItemsLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HousingComplexStateLoadedImplCopyWith<_$HousingComplexStateLoadedImpl>
      get copyWith => __$$HousingComplexStateLoadedImplCopyWithImpl<
          _$HousingComplexStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HousingComplexItems housingComplexItemsLoaded)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(housingComplexItemsLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HousingComplexItems housingComplexItemsLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(housingComplexItemsLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HousingComplexItems housingComplexItemsLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(housingComplexItemsLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HousingComplexStateLoading value) loading,
    required TResult Function(HousingComplexStateLoaded value) loaded,
    required TResult Function(HousingComplexStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HousingComplexStateLoading value)? loading,
    TResult? Function(HousingComplexStateLoaded value)? loaded,
    TResult? Function(HousingComplexStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HousingComplexStateLoading value)? loading,
    TResult Function(HousingComplexStateLoaded value)? loaded,
    TResult Function(HousingComplexStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HousingComplexStateLoadedImplToJson(
      this,
    );
  }
}

abstract class HousingComplexStateLoaded implements HousingComplexState {
  const factory HousingComplexStateLoaded(
          {required final HousingComplexItems housingComplexItemsLoaded}) =
      _$HousingComplexStateLoadedImpl;

  factory HousingComplexStateLoaded.fromJson(Map<String, dynamic> json) =
      _$HousingComplexStateLoadedImpl.fromJson;

  HousingComplexItems get housingComplexItemsLoaded;
  @JsonKey(ignore: true)
  _$$HousingComplexStateLoadedImplCopyWith<_$HousingComplexStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HousingComplexStateErrorImplCopyWith<$Res> {
  factory _$$HousingComplexStateErrorImplCopyWith(
          _$HousingComplexStateErrorImpl value,
          $Res Function(_$HousingComplexStateErrorImpl) then) =
      __$$HousingComplexStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HousingComplexStateErrorImplCopyWithImpl<$Res>
    extends _$HousingComplexStateCopyWithImpl<$Res,
        _$HousingComplexStateErrorImpl>
    implements _$$HousingComplexStateErrorImplCopyWith<$Res> {
  __$$HousingComplexStateErrorImplCopyWithImpl(
      _$HousingComplexStateErrorImpl _value,
      $Res Function(_$HousingComplexStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HousingComplexStateErrorImpl implements HousingComplexStateError {
  const _$HousingComplexStateErrorImpl({final String? $type})
      : $type = $type ?? 'error';

  factory _$HousingComplexStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$HousingComplexStateErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HousingComplexState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HousingComplexStateErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HousingComplexItems housingComplexItemsLoaded)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HousingComplexItems housingComplexItemsLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HousingComplexItems housingComplexItemsLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HousingComplexStateLoading value) loading,
    required TResult Function(HousingComplexStateLoaded value) loaded,
    required TResult Function(HousingComplexStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HousingComplexStateLoading value)? loading,
    TResult? Function(HousingComplexStateLoaded value)? loaded,
    TResult? Function(HousingComplexStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HousingComplexStateLoading value)? loading,
    TResult Function(HousingComplexStateLoaded value)? loaded,
    TResult Function(HousingComplexStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HousingComplexStateErrorImplToJson(
      this,
    );
  }
}

abstract class HousingComplexStateError implements HousingComplexState {
  const factory HousingComplexStateError() = _$HousingComplexStateErrorImpl;

  factory HousingComplexStateError.fromJson(Map<String, dynamic> json) =
      _$HousingComplexStateErrorImpl.fromJson;
}
