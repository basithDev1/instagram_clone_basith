// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
    required TResult Function(String value) searchEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String value)? searchEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String value)? searchEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_SearchEvent value) searchEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_SearchEvent value)? searchEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_SearchEvent value)? searchEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

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
    extends _$SearchEventCopyWithImpl<$Res, _$FirstEventImpl>
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
    return 'SearchEvent.firstEvent()';
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
    required TResult Function(String value) searchEvent,
  }) {
    return firstEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String value)? searchEvent,
  }) {
    return firstEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String value)? searchEvent,
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
    required TResult Function(_SearchEvent value) searchEvent,
  }) {
    return firstEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_SearchEvent value)? searchEvent,
  }) {
    return firstEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_SearchEvent value)? searchEvent,
    required TResult orElse(),
  }) {
    if (firstEvent != null) {
      return firstEvent(this);
    }
    return orElse();
  }
}

abstract class _FirstEvent implements SearchEvent {
  const factory _FirstEvent() = _$FirstEventImpl;
}

/// @nodoc
abstract class _$$SearchEventImplCopyWith<$Res> {
  factory _$$SearchEventImplCopyWith(
          _$SearchEventImpl value, $Res Function(_$SearchEventImpl) then) =
      __$$SearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchEventImpl>
    implements _$$SearchEventImplCopyWith<$Res> {
  __$$SearchEventImplCopyWithImpl(
      _$SearchEventImpl _value, $Res Function(_$SearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchEventImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEventImpl implements _SearchEvent {
  const _$SearchEventImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SearchEvent.searchEvent(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      __$$SearchEventImplCopyWithImpl<_$SearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
    required TResult Function(String value) searchEvent,
  }) {
    return searchEvent(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
    TResult? Function(String value)? searchEvent,
  }) {
    return searchEvent?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    TResult Function(String value)? searchEvent,
    required TResult orElse(),
  }) {
    if (searchEvent != null) {
      return searchEvent(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstEvent value) firstEvent,
    required TResult Function(_SearchEvent value) searchEvent,
  }) {
    return searchEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstEvent value)? firstEvent,
    TResult? Function(_SearchEvent value)? searchEvent,
  }) {
    return searchEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstEvent value)? firstEvent,
    TResult Function(_SearchEvent value)? searchEvent,
    required TResult orElse(),
  }) {
    if (searchEvent != null) {
      return searchEvent(this);
    }
    return orElse();
  }
}

abstract class _SearchEvent implements SearchEvent {
  const factory _SearchEvent({required final String value}) = _$SearchEventImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get textFieldValue => throw _privateConstructorUsedError;
  List<User> get userList => throw _privateConstructorUsedError;
  List<User> get filteredUser => throw _privateConstructorUsedError;
  List<Post> get postList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String textFieldValue,
      List<User> userList,
      List<User> filteredUser,
      List<Post> postList});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? textFieldValue = null,
    Object? userList = null,
    Object? filteredUser = null,
    Object? postList = null,
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
      textFieldValue: null == textFieldValue
          ? _value.textFieldValue
          : textFieldValue // ignore: cast_nullable_to_non_nullable
              as String,
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<User>,
      filteredUser: null == filteredUser
          ? _value.filteredUser
          : filteredUser // ignore: cast_nullable_to_non_nullable
              as List<User>,
      postList: null == postList
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String textFieldValue,
      List<User> userList,
      List<User> filteredUser,
      List<Post> postList});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? textFieldValue = null,
    Object? userList = null,
    Object? filteredUser = null,
    Object? postList = null,
  }) {
    return _then(_$SearchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      textFieldValue: null == textFieldValue
          ? _value.textFieldValue
          : textFieldValue // ignore: cast_nullable_to_non_nullable
              as String,
      userList: null == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<User>,
      filteredUser: null == filteredUser
          ? _value._filteredUser
          : filteredUser // ignore: cast_nullable_to_non_nullable
              as List<User>,
      postList: null == postList
          ? _value._postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.textFieldValue,
      required final List<User> userList,
      required final List<User> filteredUser,
      required final List<Post> postList})
      : _userList = userList,
        _filteredUser = filteredUser,
        _postList = postList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String textFieldValue;
  final List<User> _userList;
  @override
  List<User> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  final List<User> _filteredUser;
  @override
  List<User> get filteredUser {
    if (_filteredUser is EqualUnmodifiableListView) return _filteredUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredUser);
  }

  final List<Post> _postList;
  @override
  List<Post> get postList {
    if (_postList is EqualUnmodifiableListView) return _postList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postList);
  }

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, isError: $isError, textFieldValue: $textFieldValue, userList: $userList, filteredUser: $filteredUser, postList: $postList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.textFieldValue, textFieldValue) ||
                other.textFieldValue == textFieldValue) &&
            const DeepCollectionEquality().equals(other._userList, _userList) &&
            const DeepCollectionEquality()
                .equals(other._filteredUser, _filteredUser) &&
            const DeepCollectionEquality().equals(other._postList, _postList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      textFieldValue,
      const DeepCollectionEquality().hash(_userList),
      const DeepCollectionEquality().hash(_filteredUser),
      const DeepCollectionEquality().hash(_postList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isLoading,
      required final bool isError,
      required final String textFieldValue,
      required final List<User> userList,
      required final List<User> filteredUser,
      required final List<Post> postList}) = _$SearchStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get textFieldValue;
  @override
  List<User> get userList;
  @override
  List<User> get filteredUser;
  @override
  List<Post> get postList;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
