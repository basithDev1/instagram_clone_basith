// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
    required TResult Function(String postId, List<dynamic> likeList)
        likeButtonPressedEvent,
    required TResult Function(String postId) commentsEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId) checkingPostWeatherSaved,
    required TResult Function(String uid, String postId) savePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult? Function(String postId)? commentsEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId)? checkingPostWeatherSaved,
    TResult? Function(String uid, String postId)? savePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult Function(String postId)? commentsEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId)? checkingPostWeatherSaved,
    TResult Function(String uid, String postId)? savePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_LikebuttonPressedEvent value)
        likeButtonPressedEvent,
    required TResult Function(_CommentsEvent value) commentsEvent,
    required TResult Function(_DeletePostEvent value) deletePostEvent,
    required TResult Function(_CheckingPostWeatherSaved value)
        checkingPostWeatherSaved,
    required TResult Function(_SavePost value) savePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult? Function(_CommentsEvent value)? commentsEvent,
    TResult? Function(_DeletePostEvent value)? deletePostEvent,
    TResult? Function(_CheckingPostWeatherSaved value)?
        checkingPostWeatherSaved,
    TResult? Function(_SavePost value)? savePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult Function(_CommentsEvent value)? commentsEvent,
    TResult Function(_DeletePostEvent value)? deletePostEvent,
    TResult Function(_CheckingPostWeatherSaved value)? checkingPostWeatherSaved,
    TResult Function(_SavePost value)? savePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$FirstEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FirstEventImpl>
    implements _$$FirstEventImplCopyWith<$Res> {
  __$$FirstEventImplCopyWithImpl(
      _$FirstEventImpl _value, $Res Function(_$FirstEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirstEventImpl implements _FirstEvent {
  const _$FirstEventImpl();

  @override
  String toString() {
    return 'HomeEvent.firstEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FirstEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
    required TResult Function(String postId, List<dynamic> likeList)
        likeButtonPressedEvent,
    required TResult Function(String postId) commentsEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId) checkingPostWeatherSaved,
    required TResult Function(String uid, String postId) savePost,
  }) {
    return firstEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult? Function(String postId)? commentsEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId)? checkingPostWeatherSaved,
    TResult? Function(String uid, String postId)? savePost,
  }) {
    return firstEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult Function(String postId)? commentsEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId)? checkingPostWeatherSaved,
    TResult Function(String uid, String postId)? savePost,
    required TResult orElse(),
  }) {
    if (firstEvent != null) {
      return firstEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_LikebuttonPressedEvent value)
        likeButtonPressedEvent,
    required TResult Function(_CommentsEvent value) commentsEvent,
    required TResult Function(_DeletePostEvent value) deletePostEvent,
    required TResult Function(_CheckingPostWeatherSaved value)
        checkingPostWeatherSaved,
    required TResult Function(_SavePost value) savePost,
  }) {
    return firstEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult? Function(_CommentsEvent value)? commentsEvent,
    TResult? Function(_DeletePostEvent value)? deletePostEvent,
    TResult? Function(_CheckingPostWeatherSaved value)?
        checkingPostWeatherSaved,
    TResult? Function(_SavePost value)? savePost,
  }) {
    return firstEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult Function(_CommentsEvent value)? commentsEvent,
    TResult Function(_DeletePostEvent value)? deletePostEvent,
    TResult Function(_CheckingPostWeatherSaved value)? checkingPostWeatherSaved,
    TResult Function(_SavePost value)? savePost,
    required TResult orElse(),
  }) {
    if (firstEvent != null) {
      return firstEvent(this);
    }
    return orElse();
  }
}

abstract class _FirstEvent implements HomeEvent {
  const factory _FirstEvent() = _$FirstEventImpl;
}

/// @nodoc
abstract class _$$LikebuttonPressedEventImplCopyWith<$Res> {
  factory _$$LikebuttonPressedEventImplCopyWith(
          _$LikebuttonPressedEventImpl value,
          $Res Function(_$LikebuttonPressedEventImpl) then) =
      __$$LikebuttonPressedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, List<dynamic> likeList});
}

/// @nodoc
class __$$LikebuttonPressedEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LikebuttonPressedEventImpl>
    implements _$$LikebuttonPressedEventImplCopyWith<$Res> {
  __$$LikebuttonPressedEventImplCopyWithImpl(
      _$LikebuttonPressedEventImpl _value,
      $Res Function(_$LikebuttonPressedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? likeList = null,
  }) {
    return _then(_$LikebuttonPressedEventImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      likeList: null == likeList
          ? _value._likeList
          : likeList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$LikebuttonPressedEventImpl implements _LikebuttonPressedEvent {
  const _$LikebuttonPressedEventImpl(
      {required this.postId, required final List<dynamic> likeList})
      : _likeList = likeList;

  @override
  final String postId;
  final List<dynamic> _likeList;
  @override
  List<dynamic> get likeList {
    if (_likeList is EqualUnmodifiableListView) return _likeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeList);
  }

  @override
  String toString() {
    return 'HomeEvent.likeButtonPressedEvent(postId: $postId, likeList: $likeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikebuttonPressedEventImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality().equals(other._likeList, _likeList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, postId, const DeepCollectionEquality().hash(_likeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikebuttonPressedEventImplCopyWith<_$LikebuttonPressedEventImpl>
      get copyWith => __$$LikebuttonPressedEventImplCopyWithImpl<
          _$LikebuttonPressedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
    required TResult Function(String postId, List<dynamic> likeList)
        likeButtonPressedEvent,
    required TResult Function(String postId) commentsEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId) checkingPostWeatherSaved,
    required TResult Function(String uid, String postId) savePost,
  }) {
    return likeButtonPressedEvent(postId, likeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult? Function(String postId)? commentsEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId)? checkingPostWeatherSaved,
    TResult? Function(String uid, String postId)? savePost,
  }) {
    return likeButtonPressedEvent?.call(postId, likeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult Function(String postId)? commentsEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId)? checkingPostWeatherSaved,
    TResult Function(String uid, String postId)? savePost,
    required TResult orElse(),
  }) {
    if (likeButtonPressedEvent != null) {
      return likeButtonPressedEvent(postId, likeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_LikebuttonPressedEvent value)
        likeButtonPressedEvent,
    required TResult Function(_CommentsEvent value) commentsEvent,
    required TResult Function(_DeletePostEvent value) deletePostEvent,
    required TResult Function(_CheckingPostWeatherSaved value)
        checkingPostWeatherSaved,
    required TResult Function(_SavePost value) savePost,
  }) {
    return likeButtonPressedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult? Function(_CommentsEvent value)? commentsEvent,
    TResult? Function(_DeletePostEvent value)? deletePostEvent,
    TResult? Function(_CheckingPostWeatherSaved value)?
        checkingPostWeatherSaved,
    TResult? Function(_SavePost value)? savePost,
  }) {
    return likeButtonPressedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult Function(_CommentsEvent value)? commentsEvent,
    TResult Function(_DeletePostEvent value)? deletePostEvent,
    TResult Function(_CheckingPostWeatherSaved value)? checkingPostWeatherSaved,
    TResult Function(_SavePost value)? savePost,
    required TResult orElse(),
  }) {
    if (likeButtonPressedEvent != null) {
      return likeButtonPressedEvent(this);
    }
    return orElse();
  }
}

abstract class _LikebuttonPressedEvent implements HomeEvent {
  const factory _LikebuttonPressedEvent(
      {required final String postId,
      required final List<dynamic> likeList}) = _$LikebuttonPressedEventImpl;

  String get postId;
  List<dynamic> get likeList;
  @JsonKey(ignore: true)
  _$$LikebuttonPressedEventImplCopyWith<_$LikebuttonPressedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentsEventImplCopyWith<$Res> {
  factory _$$CommentsEventImplCopyWith(
          _$CommentsEventImpl value, $Res Function(_$CommentsEventImpl) then) =
      __$$CommentsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$CommentsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CommentsEventImpl>
    implements _$$CommentsEventImplCopyWith<$Res> {
  __$$CommentsEventImplCopyWithImpl(
      _$CommentsEventImpl _value, $Res Function(_$CommentsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$CommentsEventImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentsEventImpl implements _CommentsEvent {
  const _$CommentsEventImpl({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'HomeEvent.commentsEvent(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsEventImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsEventImplCopyWith<_$CommentsEventImpl> get copyWith =>
      __$$CommentsEventImplCopyWithImpl<_$CommentsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
    required TResult Function(String postId, List<dynamic> likeList)
        likeButtonPressedEvent,
    required TResult Function(String postId) commentsEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId) checkingPostWeatherSaved,
    required TResult Function(String uid, String postId) savePost,
  }) {
    return commentsEvent(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult? Function(String postId)? commentsEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId)? checkingPostWeatherSaved,
    TResult? Function(String uid, String postId)? savePost,
  }) {
    return commentsEvent?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult Function(String postId)? commentsEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId)? checkingPostWeatherSaved,
    TResult Function(String uid, String postId)? savePost,
    required TResult orElse(),
  }) {
    if (commentsEvent != null) {
      return commentsEvent(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_LikebuttonPressedEvent value)
        likeButtonPressedEvent,
    required TResult Function(_CommentsEvent value) commentsEvent,
    required TResult Function(_DeletePostEvent value) deletePostEvent,
    required TResult Function(_CheckingPostWeatherSaved value)
        checkingPostWeatherSaved,
    required TResult Function(_SavePost value) savePost,
  }) {
    return commentsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult? Function(_CommentsEvent value)? commentsEvent,
    TResult? Function(_DeletePostEvent value)? deletePostEvent,
    TResult? Function(_CheckingPostWeatherSaved value)?
        checkingPostWeatherSaved,
    TResult? Function(_SavePost value)? savePost,
  }) {
    return commentsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult Function(_CommentsEvent value)? commentsEvent,
    TResult Function(_DeletePostEvent value)? deletePostEvent,
    TResult Function(_CheckingPostWeatherSaved value)? checkingPostWeatherSaved,
    TResult Function(_SavePost value)? savePost,
    required TResult orElse(),
  }) {
    if (commentsEvent != null) {
      return commentsEvent(this);
    }
    return orElse();
  }
}

abstract class _CommentsEvent implements HomeEvent {
  const factory _CommentsEvent({required final String postId}) =
      _$CommentsEventImpl;

  String get postId;
  @JsonKey(ignore: true)
  _$$CommentsEventImplCopyWith<_$CommentsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePostEventImplCopyWith<$Res> {
  factory _$$DeletePostEventImplCopyWith(_$DeletePostEventImpl value,
          $Res Function(_$DeletePostEventImpl) then) =
      __$$DeletePostEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$DeletePostEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeletePostEventImpl>
    implements _$$DeletePostEventImplCopyWith<$Res> {
  __$$DeletePostEventImplCopyWithImpl(
      _$DeletePostEventImpl _value, $Res Function(_$DeletePostEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$DeletePostEventImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePostEventImpl implements _DeletePostEvent {
  const _$DeletePostEventImpl({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'HomeEvent.deletePostEvent(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePostEventImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePostEventImplCopyWith<_$DeletePostEventImpl> get copyWith =>
      __$$DeletePostEventImplCopyWithImpl<_$DeletePostEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
    required TResult Function(String postId, List<dynamic> likeList)
        likeButtonPressedEvent,
    required TResult Function(String postId) commentsEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId) checkingPostWeatherSaved,
    required TResult Function(String uid, String postId) savePost,
  }) {
    return deletePostEvent(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult? Function(String postId)? commentsEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId)? checkingPostWeatherSaved,
    TResult? Function(String uid, String postId)? savePost,
  }) {
    return deletePostEvent?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult Function(String postId)? commentsEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId)? checkingPostWeatherSaved,
    TResult Function(String uid, String postId)? savePost,
    required TResult orElse(),
  }) {
    if (deletePostEvent != null) {
      return deletePostEvent(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_LikebuttonPressedEvent value)
        likeButtonPressedEvent,
    required TResult Function(_CommentsEvent value) commentsEvent,
    required TResult Function(_DeletePostEvent value) deletePostEvent,
    required TResult Function(_CheckingPostWeatherSaved value)
        checkingPostWeatherSaved,
    required TResult Function(_SavePost value) savePost,
  }) {
    return deletePostEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult? Function(_CommentsEvent value)? commentsEvent,
    TResult? Function(_DeletePostEvent value)? deletePostEvent,
    TResult? Function(_CheckingPostWeatherSaved value)?
        checkingPostWeatherSaved,
    TResult? Function(_SavePost value)? savePost,
  }) {
    return deletePostEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult Function(_CommentsEvent value)? commentsEvent,
    TResult Function(_DeletePostEvent value)? deletePostEvent,
    TResult Function(_CheckingPostWeatherSaved value)? checkingPostWeatherSaved,
    TResult Function(_SavePost value)? savePost,
    required TResult orElse(),
  }) {
    if (deletePostEvent != null) {
      return deletePostEvent(this);
    }
    return orElse();
  }
}

abstract class _DeletePostEvent implements HomeEvent {
  const factory _DeletePostEvent({required final String postId}) =
      _$DeletePostEventImpl;

  String get postId;
  @JsonKey(ignore: true)
  _$$DeletePostEventImplCopyWith<_$DeletePostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckingPostWeatherSavedImplCopyWith<$Res> {
  factory _$$CheckingPostWeatherSavedImplCopyWith(
          _$CheckingPostWeatherSavedImpl value,
          $Res Function(_$CheckingPostWeatherSavedImpl) then) =
      __$$CheckingPostWeatherSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$CheckingPostWeatherSavedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CheckingPostWeatherSavedImpl>
    implements _$$CheckingPostWeatherSavedImplCopyWith<$Res> {
  __$$CheckingPostWeatherSavedImplCopyWithImpl(
      _$CheckingPostWeatherSavedImpl _value,
      $Res Function(_$CheckingPostWeatherSavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$CheckingPostWeatherSavedImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckingPostWeatherSavedImpl implements _CheckingPostWeatherSaved {
  const _$CheckingPostWeatherSavedImpl({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'HomeEvent.checkingPostWeatherSaved(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckingPostWeatherSavedImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckingPostWeatherSavedImplCopyWith<_$CheckingPostWeatherSavedImpl>
      get copyWith => __$$CheckingPostWeatherSavedImplCopyWithImpl<
          _$CheckingPostWeatherSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
    required TResult Function(String postId, List<dynamic> likeList)
        likeButtonPressedEvent,
    required TResult Function(String postId) commentsEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId) checkingPostWeatherSaved,
    required TResult Function(String uid, String postId) savePost,
  }) {
    return checkingPostWeatherSaved(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult? Function(String postId)? commentsEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId)? checkingPostWeatherSaved,
    TResult? Function(String uid, String postId)? savePost,
  }) {
    return checkingPostWeatherSaved?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult Function(String postId)? commentsEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId)? checkingPostWeatherSaved,
    TResult Function(String uid, String postId)? savePost,
    required TResult orElse(),
  }) {
    if (checkingPostWeatherSaved != null) {
      return checkingPostWeatherSaved(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_LikebuttonPressedEvent value)
        likeButtonPressedEvent,
    required TResult Function(_CommentsEvent value) commentsEvent,
    required TResult Function(_DeletePostEvent value) deletePostEvent,
    required TResult Function(_CheckingPostWeatherSaved value)
        checkingPostWeatherSaved,
    required TResult Function(_SavePost value) savePost,
  }) {
    return checkingPostWeatherSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult? Function(_CommentsEvent value)? commentsEvent,
    TResult? Function(_DeletePostEvent value)? deletePostEvent,
    TResult? Function(_CheckingPostWeatherSaved value)?
        checkingPostWeatherSaved,
    TResult? Function(_SavePost value)? savePost,
  }) {
    return checkingPostWeatherSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult Function(_CommentsEvent value)? commentsEvent,
    TResult Function(_DeletePostEvent value)? deletePostEvent,
    TResult Function(_CheckingPostWeatherSaved value)? checkingPostWeatherSaved,
    TResult Function(_SavePost value)? savePost,
    required TResult orElse(),
  }) {
    if (checkingPostWeatherSaved != null) {
      return checkingPostWeatherSaved(this);
    }
    return orElse();
  }
}

abstract class _CheckingPostWeatherSaved implements HomeEvent {
  const factory _CheckingPostWeatherSaved({required final String postId}) =
      _$CheckingPostWeatherSavedImpl;

  String get postId;
  @JsonKey(ignore: true)
  _$$CheckingPostWeatherSavedImplCopyWith<_$CheckingPostWeatherSavedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavePostImplCopyWith<$Res> {
  factory _$$SavePostImplCopyWith(
          _$SavePostImpl value, $Res Function(_$SavePostImpl) then) =
      __$$SavePostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String postId});
}

/// @nodoc
class __$$SavePostImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SavePostImpl>
    implements _$$SavePostImplCopyWith<$Res> {
  __$$SavePostImplCopyWithImpl(
      _$SavePostImpl _value, $Res Function(_$SavePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? postId = null,
  }) {
    return _then(_$SavePostImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SavePostImpl implements _SavePost {
  const _$SavePostImpl({required this.uid, required this.postId});

  @override
  final String uid;
  @override
  final String postId;

  @override
  String toString() {
    return 'HomeEvent.savePost(uid: $uid, postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePostImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePostImplCopyWith<_$SavePostImpl> get copyWith =>
      __$$SavePostImplCopyWithImpl<_$SavePostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
    required TResult Function(String postId, List<dynamic> likeList)
        likeButtonPressedEvent,
    required TResult Function(String postId) commentsEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId) checkingPostWeatherSaved,
    required TResult Function(String uid, String postId) savePost,
  }) {
    return savePost(uid, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult? Function(String postId)? commentsEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId)? checkingPostWeatherSaved,
    TResult? Function(String uid, String postId)? savePost,
  }) {
    return savePost?.call(uid, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String postId, List<dynamic> likeList)?
        likeButtonPressedEvent,
    TResult Function(String postId)? commentsEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId)? checkingPostWeatherSaved,
    TResult Function(String uid, String postId)? savePost,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(uid, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_LikebuttonPressedEvent value)
        likeButtonPressedEvent,
    required TResult Function(_CommentsEvent value) commentsEvent,
    required TResult Function(_DeletePostEvent value) deletePostEvent,
    required TResult Function(_CheckingPostWeatherSaved value)
        checkingPostWeatherSaved,
    required TResult Function(_SavePost value) savePost,
  }) {
    return savePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult? Function(_CommentsEvent value)? commentsEvent,
    TResult? Function(_DeletePostEvent value)? deletePostEvent,
    TResult? Function(_CheckingPostWeatherSaved value)?
        checkingPostWeatherSaved,
    TResult? Function(_SavePost value)? savePost,
  }) {
    return savePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_LikebuttonPressedEvent value)? likeButtonPressedEvent,
    TResult Function(_CommentsEvent value)? commentsEvent,
    TResult Function(_DeletePostEvent value)? deletePostEvent,
    TResult Function(_CheckingPostWeatherSaved value)? checkingPostWeatherSaved,
    TResult Function(_SavePost value)? savePost,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(this);
    }
    return orElse();
  }
}

abstract class _SavePost implements HomeEvent {
  const factory _SavePost(
      {required final String uid,
      required final String postId}) = _$SavePostImpl;

  String get uid;
  String get postId;
  @JsonKey(ignore: true)
  _$$SavePostImplCopyWith<_$SavePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Post> get post => throw _privateConstructorUsedError;
  List<QueryDocumentSnapshot<Object?>> get commentSnapshot =>
      throw _privateConstructorUsedError;
  bool get isPostSaved => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Post> post,
      List<QueryDocumentSnapshot<Object?>> commentSnapshot,
      bool isPostSaved,
      User? user,
      Object? error,
      String? uid});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? post = null,
    Object? commentSnapshot = null,
    Object? isPostSaved = null,
    Object? user = freezed,
    Object? error = freezed,
    Object? uid = freezed,
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
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      commentSnapshot: null == commentSnapshot
          ? _value.commentSnapshot
          : commentSnapshot // ignore: cast_nullable_to_non_nullable
              as List<QueryDocumentSnapshot<Object?>>,
      isPostSaved: null == isPostSaved
          ? _value.isPostSaved
          : isPostSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      error: freezed == error ? _value.error : error,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Post> post,
      List<QueryDocumentSnapshot<Object?>> commentSnapshot,
      bool isPostSaved,
      User? user,
      Object? error,
      String? uid});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? post = null,
    Object? commentSnapshot = null,
    Object? isPostSaved = null,
    Object? user = freezed,
    Object? error = freezed,
    Object? uid = freezed,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      post: null == post
          ? _value._post
          : post // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      commentSnapshot: null == commentSnapshot
          ? _value._commentSnapshot
          : commentSnapshot // ignore: cast_nullable_to_non_nullable
              as List<QueryDocumentSnapshot<Object?>>,
      isPostSaved: null == isPostSaved
          ? _value.isPostSaved
          : isPostSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      error: freezed == error ? _value.error : error,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<Post> post,
      required final List<QueryDocumentSnapshot<Object?>> commentSnapshot,
      required this.isPostSaved,
      this.user,
      this.error,
      this.uid})
      : _post = post,
        _commentSnapshot = commentSnapshot;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Post> _post;
  @override
  List<Post> get post {
    if (_post is EqualUnmodifiableListView) return _post;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_post);
  }

  final List<QueryDocumentSnapshot<Object?>> _commentSnapshot;
  @override
  List<QueryDocumentSnapshot<Object?>> get commentSnapshot {
    if (_commentSnapshot is EqualUnmodifiableListView) return _commentSnapshot;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentSnapshot);
  }

  @override
  final bool isPostSaved;
  @override
  final User? user;
  @override
  final Object? error;
  @override
  final String? uid;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isError: $isError, post: $post, commentSnapshot: $commentSnapshot, isPostSaved: $isPostSaved, user: $user, error: $error, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._post, _post) &&
            const DeepCollectionEquality()
                .equals(other._commentSnapshot, _commentSnapshot) &&
            (identical(other.isPostSaved, isPostSaved) ||
                other.isPostSaved == isPostSaved) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_post),
      const DeepCollectionEquality().hash(_commentSnapshot),
      isPostSaved,
      user,
      const DeepCollectionEquality().hash(error),
      uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final bool isLoading,
      required final bool isError,
      required final List<Post> post,
      required final List<QueryDocumentSnapshot<Object?>> commentSnapshot,
      required final bool isPostSaved,
      final User? user,
      final Object? error,
      final String? uid}) = _$HomeStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Post> get post;
  @override
  List<QueryDocumentSnapshot<Object?>> get commentSnapshot;
  @override
  bool get isPostSaved;
  @override
  User? get user;
  @override
  Object? get error;
  @override
  String? get uid;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
