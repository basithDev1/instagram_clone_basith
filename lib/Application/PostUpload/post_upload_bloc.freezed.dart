// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostUploadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetEntity takenAsset) firstEvent,
    required TResult Function(String value) descriptionEvent,
    required TResult Function(AssetEntity asset) addToFirebaseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetEntity takenAsset)? firstEvent,
    TResult? Function(String value)? descriptionEvent,
    TResult? Function(AssetEntity asset)? addToFirebaseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetEntity takenAsset)? firstEvent,
    TResult Function(String value)? descriptionEvent,
    TResult Function(AssetEntity asset)? addToFirebaseEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_DescriptionEvent value) descriptionEvent,
    required TResult Function(_AddToFirebaseEvent value) addToFirebaseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_DescriptionEvent value)? descriptionEvent,
    TResult? Function(_AddToFirebaseEvent value)? addToFirebaseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_DescriptionEvent value)? descriptionEvent,
    TResult Function(_AddToFirebaseEvent value)? addToFirebaseEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostUploadEventCopyWith<$Res> {
  factory $PostUploadEventCopyWith(
          PostUploadEvent value, $Res Function(PostUploadEvent) then) =
      _$PostUploadEventCopyWithImpl<$Res, PostUploadEvent>;
}

/// @nodoc
class _$PostUploadEventCopyWithImpl<$Res, $Val extends PostUploadEvent>
    implements $PostUploadEventCopyWith<$Res> {
  _$PostUploadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FirstEventImplCopyWith<$Res> {
  factory _$$FirstEventImplCopyWith(
          _$FirstEventImpl value, $Res Function(_$FirstEventImpl) then) =
      __$$FirstEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetEntity takenAsset});
}

/// @nodoc
class __$$FirstEventImplCopyWithImpl<$Res>
    extends _$PostUploadEventCopyWithImpl<$Res, _$FirstEventImpl>
    implements _$$FirstEventImplCopyWith<$Res> {
  __$$FirstEventImplCopyWithImpl(
      _$FirstEventImpl _value, $Res Function(_$FirstEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? takenAsset = null,
  }) {
    return _then(_$FirstEventImpl(
      takenAsset: null == takenAsset
          ? _value.takenAsset
          : takenAsset // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
    ));
  }
}

/// @nodoc

class _$FirstEventImpl implements _FirstEvent {
  const _$FirstEventImpl({required this.takenAsset});

  @override
  final AssetEntity takenAsset;

  @override
  String toString() {
    return 'PostUploadEvent.firstEvent(takenAsset: $takenAsset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstEventImpl &&
            (identical(other.takenAsset, takenAsset) ||
                other.takenAsset == takenAsset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, takenAsset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstEventImplCopyWith<_$FirstEventImpl> get copyWith =>
      __$$FirstEventImplCopyWithImpl<_$FirstEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetEntity takenAsset) firstEvent,
    required TResult Function(String value) descriptionEvent,
    required TResult Function(AssetEntity asset) addToFirebaseEvent,
  }) {
    return firstEvent(takenAsset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetEntity takenAsset)? firstEvent,
    TResult? Function(String value)? descriptionEvent,
    TResult? Function(AssetEntity asset)? addToFirebaseEvent,
  }) {
    return firstEvent?.call(takenAsset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetEntity takenAsset)? firstEvent,
    TResult Function(String value)? descriptionEvent,
    TResult Function(AssetEntity asset)? addToFirebaseEvent,
    required TResult orElse(),
  }) {
    if (firstEvent != null) {
      return firstEvent(takenAsset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_DescriptionEvent value) descriptionEvent,
    required TResult Function(_AddToFirebaseEvent value) addToFirebaseEvent,
  }) {
    return firstEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_DescriptionEvent value)? descriptionEvent,
    TResult? Function(_AddToFirebaseEvent value)? addToFirebaseEvent,
  }) {
    return firstEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_DescriptionEvent value)? descriptionEvent,
    TResult Function(_AddToFirebaseEvent value)? addToFirebaseEvent,
    required TResult orElse(),
  }) {
    if (firstEvent != null) {
      return firstEvent(this);
    }
    return orElse();
  }
}

abstract class _FirstEvent implements PostUploadEvent {
  const factory _FirstEvent({required final AssetEntity takenAsset}) =
      _$FirstEventImpl;

  AssetEntity get takenAsset;
  @JsonKey(ignore: true)
  _$$FirstEventImplCopyWith<_$FirstEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionEventImplCopyWith<$Res> {
  factory _$$DescriptionEventImplCopyWith(_$DescriptionEventImpl value,
          $Res Function(_$DescriptionEventImpl) then) =
      __$$DescriptionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$DescriptionEventImplCopyWithImpl<$Res>
    extends _$PostUploadEventCopyWithImpl<$Res, _$DescriptionEventImpl>
    implements _$$DescriptionEventImplCopyWith<$Res> {
  __$$DescriptionEventImplCopyWithImpl(_$DescriptionEventImpl _value,
      $Res Function(_$DescriptionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DescriptionEventImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionEventImpl implements _DescriptionEvent {
  const _$DescriptionEventImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'PostUploadEvent.descriptionEvent(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionEventImplCopyWith<_$DescriptionEventImpl> get copyWith =>
      __$$DescriptionEventImplCopyWithImpl<_$DescriptionEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetEntity takenAsset) firstEvent,
    required TResult Function(String value) descriptionEvent,
    required TResult Function(AssetEntity asset) addToFirebaseEvent,
  }) {
    return descriptionEvent(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetEntity takenAsset)? firstEvent,
    TResult? Function(String value)? descriptionEvent,
    TResult? Function(AssetEntity asset)? addToFirebaseEvent,
  }) {
    return descriptionEvent?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetEntity takenAsset)? firstEvent,
    TResult Function(String value)? descriptionEvent,
    TResult Function(AssetEntity asset)? addToFirebaseEvent,
    required TResult orElse(),
  }) {
    if (descriptionEvent != null) {
      return descriptionEvent(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_DescriptionEvent value) descriptionEvent,
    required TResult Function(_AddToFirebaseEvent value) addToFirebaseEvent,
  }) {
    return descriptionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_DescriptionEvent value)? descriptionEvent,
    TResult? Function(_AddToFirebaseEvent value)? addToFirebaseEvent,
  }) {
    return descriptionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_DescriptionEvent value)? descriptionEvent,
    TResult Function(_AddToFirebaseEvent value)? addToFirebaseEvent,
    required TResult orElse(),
  }) {
    if (descriptionEvent != null) {
      return descriptionEvent(this);
    }
    return orElse();
  }
}

abstract class _DescriptionEvent implements PostUploadEvent {
  const factory _DescriptionEvent({required final String value}) =
      _$DescriptionEventImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$DescriptionEventImplCopyWith<_$DescriptionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToFirebaseEventImplCopyWith<$Res> {
  factory _$$AddToFirebaseEventImplCopyWith(_$AddToFirebaseEventImpl value,
          $Res Function(_$AddToFirebaseEventImpl) then) =
      __$$AddToFirebaseEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetEntity asset});
}

/// @nodoc
class __$$AddToFirebaseEventImplCopyWithImpl<$Res>
    extends _$PostUploadEventCopyWithImpl<$Res, _$AddToFirebaseEventImpl>
    implements _$$AddToFirebaseEventImplCopyWith<$Res> {
  __$$AddToFirebaseEventImplCopyWithImpl(_$AddToFirebaseEventImpl _value,
      $Res Function(_$AddToFirebaseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
  }) {
    return _then(_$AddToFirebaseEventImpl(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
    ));
  }
}

/// @nodoc

class _$AddToFirebaseEventImpl implements _AddToFirebaseEvent {
  const _$AddToFirebaseEventImpl({required this.asset});

  @override
  final AssetEntity asset;

  @override
  String toString() {
    return 'PostUploadEvent.addToFirebaseEvent(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFirebaseEventImpl &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFirebaseEventImplCopyWith<_$AddToFirebaseEventImpl> get copyWith =>
      __$$AddToFirebaseEventImplCopyWithImpl<_$AddToFirebaseEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetEntity takenAsset) firstEvent,
    required TResult Function(String value) descriptionEvent,
    required TResult Function(AssetEntity asset) addToFirebaseEvent,
  }) {
    return addToFirebaseEvent(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetEntity takenAsset)? firstEvent,
    TResult? Function(String value)? descriptionEvent,
    TResult? Function(AssetEntity asset)? addToFirebaseEvent,
  }) {
    return addToFirebaseEvent?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetEntity takenAsset)? firstEvent,
    TResult Function(String value)? descriptionEvent,
    TResult Function(AssetEntity asset)? addToFirebaseEvent,
    required TResult orElse(),
  }) {
    if (addToFirebaseEvent != null) {
      return addToFirebaseEvent(asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_DescriptionEvent value) descriptionEvent,
    required TResult Function(_AddToFirebaseEvent value) addToFirebaseEvent,
  }) {
    return addToFirebaseEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_DescriptionEvent value)? descriptionEvent,
    TResult? Function(_AddToFirebaseEvent value)? addToFirebaseEvent,
  }) {
    return addToFirebaseEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_DescriptionEvent value)? descriptionEvent,
    TResult Function(_AddToFirebaseEvent value)? addToFirebaseEvent,
    required TResult orElse(),
  }) {
    if (addToFirebaseEvent != null) {
      return addToFirebaseEvent(this);
    }
    return orElse();
  }
}

abstract class _AddToFirebaseEvent implements PostUploadEvent {
  const factory _AddToFirebaseEvent({required final AssetEntity asset}) =
      _$AddToFirebaseEventImpl;

  AssetEntity get asset;
  @JsonKey(ignore: true)
  _$$AddToFirebaseEventImplCopyWith<_$AddToFirebaseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostUploadState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  AssetEntity? get takenAsset => throw _privateConstructorUsedError;
  bool? get isPostUpdated => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostUploadStateCopyWith<PostUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostUploadStateCopyWith<$Res> {
  factory $PostUploadStateCopyWith(
          PostUploadState value, $Res Function(PostUploadState) then) =
      _$PostUploadStateCopyWithImpl<$Res, PostUploadState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      AssetEntity? takenAsset,
      bool? isPostUpdated,
      String? description});
}

/// @nodoc
class _$PostUploadStateCopyWithImpl<$Res, $Val extends PostUploadState>
    implements $PostUploadStateCopyWith<$Res> {
  _$PostUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? takenAsset = freezed,
    Object? isPostUpdated = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      takenAsset: freezed == takenAsset
          ? _value.takenAsset
          : takenAsset // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
      isPostUpdated: freezed == isPostUpdated
          ? _value.isPostUpdated
          : isPostUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostUploadStateImplCopyWith<$Res>
    implements $PostUploadStateCopyWith<$Res> {
  factory _$$PostUploadStateImplCopyWith(_$PostUploadStateImpl value,
          $Res Function(_$PostUploadStateImpl) then) =
      __$$PostUploadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      AssetEntity? takenAsset,
      bool? isPostUpdated,
      String? description});
}

/// @nodoc
class __$$PostUploadStateImplCopyWithImpl<$Res>
    extends _$PostUploadStateCopyWithImpl<$Res, _$PostUploadStateImpl>
    implements _$$PostUploadStateImplCopyWith<$Res> {
  __$$PostUploadStateImplCopyWithImpl(
      _$PostUploadStateImpl _value, $Res Function(_$PostUploadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? takenAsset = freezed,
    Object? isPostUpdated = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PostUploadStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      takenAsset: freezed == takenAsset
          ? _value.takenAsset
          : takenAsset // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
      isPostUpdated: freezed == isPostUpdated
          ? _value.isPostUpdated
          : isPostUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostUploadStateImpl implements _PostUploadState {
  const _$PostUploadStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.takenAsset,
      this.isPostUpdated,
      this.description});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final AssetEntity? takenAsset;
  @override
  final bool? isPostUpdated;
  @override
  final String? description;

  @override
  String toString() {
    return 'PostUploadState(isLoading: $isLoading, isError: $isError, takenAsset: $takenAsset, isPostUpdated: $isPostUpdated, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostUploadStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.takenAsset, takenAsset) ||
                other.takenAsset == takenAsset) &&
            (identical(other.isPostUpdated, isPostUpdated) ||
                other.isPostUpdated == isPostUpdated) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, takenAsset, isPostUpdated, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostUploadStateImplCopyWith<_$PostUploadStateImpl> get copyWith =>
      __$$PostUploadStateImplCopyWithImpl<_$PostUploadStateImpl>(
          this, _$identity);
}

abstract class _PostUploadState implements PostUploadState {
  const factory _PostUploadState(
      {required final bool isLoading,
      required final bool isError,
      required final AssetEntity? takenAsset,
      final bool? isPostUpdated,
      final String? description}) = _$PostUploadStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  AssetEntity? get takenAsset;
  @override
  bool? get isPostUpdated;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$PostUploadStateImplCopyWith<_$PostUploadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
