// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(ContactModel contact) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
    TResult? Function(ContactModel contact)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(ContactModel contact)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListEventFindAll value) findAll,
    required TResult Function(_ContactListEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListEventFindAll value)? findAll,
    TResult? Function(_ContactListEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListEventCopyWith<$Res> {
  factory $ContactListEventCopyWith(
          ContactListEvent value, $Res Function(ContactListEvent) then) =
      _$ContactListEventCopyWithImpl<$Res, ContactListEvent>;
}

/// @nodoc
class _$ContactListEventCopyWithImpl<$Res, $Val extends ContactListEvent>
    implements $ContactListEventCopyWith<$Res> {
  _$ContactListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContactListEventFindAllCopyWith<$Res> {
  factory _$$_ContactListEventFindAllCopyWith(_$_ContactListEventFindAll value,
          $Res Function(_$_ContactListEventFindAll) then) =
      __$$_ContactListEventFindAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactListEventFindAllCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$_ContactListEventFindAll>
    implements _$$_ContactListEventFindAllCopyWith<$Res> {
  __$$_ContactListEventFindAllCopyWithImpl(_$_ContactListEventFindAll _value,
      $Res Function(_$_ContactListEventFindAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactListEventFindAll implements _ContactListEventFindAll {
  const _$_ContactListEventFindAll();

  @override
  String toString() {
    return 'ContactListEvent.findAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListEventFindAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(ContactModel contact) delete,
  }) {
    return findAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
    TResult? Function(ContactModel contact)? delete,
  }) {
    return findAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(ContactModel contact)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListEventFindAll value) findAll,
    required TResult Function(_ContactListEventDelete value) delete,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListEventFindAll value)? findAll,
    TResult? Function(_ContactListEventDelete value)? delete,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class _ContactListEventFindAll implements ContactListEvent {
  const factory _ContactListEventFindAll() = _$_ContactListEventFindAll;
}

/// @nodoc
abstract class _$$_ContactListEventDeleteCopyWith<$Res> {
  factory _$$_ContactListEventDeleteCopyWith(_$_ContactListEventDelete value,
          $Res Function(_$_ContactListEventDelete) then) =
      __$$_ContactListEventDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactModel contact});
}

/// @nodoc
class __$$_ContactListEventDeleteCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$_ContactListEventDelete>
    implements _$$_ContactListEventDeleteCopyWith<$Res> {
  __$$_ContactListEventDeleteCopyWithImpl(_$_ContactListEventDelete _value,
      $Res Function(_$_ContactListEventDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$_ContactListEventDelete(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactModel,
    ));
  }
}

/// @nodoc

class _$_ContactListEventDelete implements _ContactListEventDelete {
  const _$_ContactListEventDelete({required this.contact});

  @override
  final ContactModel contact;

  @override
  String toString() {
    return 'ContactListEvent.delete(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListEventDelete &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactListEventDeleteCopyWith<_$_ContactListEventDelete> get copyWith =>
      __$$_ContactListEventDeleteCopyWithImpl<_$_ContactListEventDelete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(ContactModel contact) delete,
  }) {
    return delete(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
    TResult? Function(ContactModel contact)? delete,
  }) {
    return delete?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(ContactModel contact)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListEventFindAll value) findAll,
    required TResult Function(_ContactListEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListEventFindAll value)? findAll,
    TResult? Function(_ContactListEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _ContactListEventDelete implements ContactListEvent {
  const factory _ContactListEventDelete({required final ContactModel contact}) =
      _$_ContactListEventDelete;

  ContactModel get contact;
  @JsonKey(ignore: true)
  _$$_ContactListEventDeleteCopyWith<_$_ContactListEventDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function(List<ContactModel> contacts) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function(List<ContactModel> contacts)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function(List<ContactModel> contacts)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListStateCopyWith<$Res> {
  factory $ContactListStateCopyWith(
          ContactListState value, $Res Function(ContactListState) then) =
      _$ContactListStateCopyWithImpl<$Res, ContactListState>;
}

/// @nodoc
class _$ContactListStateCopyWithImpl<$Res, $Val extends ContactListState>
    implements $ContactListStateCopyWith<$Res> {
  _$ContactListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContactListStateInitialCopyWith<$Res> {
  factory _$$_ContactListStateInitialCopyWith(_$_ContactListStateInitial value,
          $Res Function(_$_ContactListStateInitial) then) =
      __$$_ContactListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactListStateInitialCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_ContactListStateInitial>
    implements _$$_ContactListStateInitialCopyWith<$Res> {
  __$$_ContactListStateInitialCopyWithImpl(_$_ContactListStateInitial _value,
      $Res Function(_$_ContactListStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactListStateInitial implements _ContactListStateInitial {
  const _$_ContactListStateInitial();

  @override
  String toString() {
    return 'ContactListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function(List<ContactModel> contacts) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function(List<ContactModel> contacts)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function(List<ContactModel> contacts)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateInitial implements ContactListState {
  const factory _ContactListStateInitial() = _$_ContactListStateInitial;
}

/// @nodoc
abstract class _$$_ContactListStateLoadingCopyWith<$Res> {
  factory _$$_ContactListStateLoadingCopyWith(_$_ContactListStateLoading value,
          $Res Function(_$_ContactListStateLoading) then) =
      __$$_ContactListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactListStateLoadingCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_ContactListStateLoading>
    implements _$$_ContactListStateLoadingCopyWith<$Res> {
  __$$_ContactListStateLoadingCopyWithImpl(_$_ContactListStateLoading _value,
      $Res Function(_$_ContactListStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactListStateLoading implements _ContactListStateLoading {
  const _$_ContactListStateLoading();

  @override
  String toString() {
    return 'ContactListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function(List<ContactModel> contacts) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function(List<ContactModel> contacts)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function(List<ContactModel> contacts)? data,
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
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateLoading implements ContactListState {
  const factory _ContactListStateLoading() = _$_ContactListStateLoading;
}

/// @nodoc
abstract class _$$_ContactListStateSuccessCopyWith<$Res> {
  factory _$$_ContactListStateSuccessCopyWith(_$_ContactListStateSuccess value,
          $Res Function(_$_ContactListStateSuccess) then) =
      __$$_ContactListStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactListStateSuccessCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_ContactListStateSuccess>
    implements _$$_ContactListStateSuccessCopyWith<$Res> {
  __$$_ContactListStateSuccessCopyWithImpl(_$_ContactListStateSuccess _value,
      $Res Function(_$_ContactListStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactListStateSuccess implements _ContactListStateSuccess {
  const _$_ContactListStateSuccess();

  @override
  String toString() {
    return 'ContactListState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function(List<ContactModel> contacts) data,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function(List<ContactModel> contacts)? data,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function(List<ContactModel> contacts)? data,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateData value) data,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateData value)? data,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateData value)? data,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateSuccess implements ContactListState {
  const factory _ContactListStateSuccess() = _$_ContactListStateSuccess;
}

/// @nodoc
abstract class _$$_ContactListStateErrorCopyWith<$Res> {
  factory _$$_ContactListStateErrorCopyWith(_$_ContactListStateError value,
          $Res Function(_$_ContactListStateError) then) =
      __$$_ContactListStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ContactListStateErrorCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_ContactListStateError>
    implements _$$_ContactListStateErrorCopyWith<$Res> {
  __$$_ContactListStateErrorCopyWithImpl(_$_ContactListStateError _value,
      $Res Function(_$_ContactListStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ContactListStateError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContactListStateError implements _ContactListStateError {
  const _$_ContactListStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ContactListState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactListStateErrorCopyWith<_$_ContactListStateError> get copyWith =>
      __$$_ContactListStateErrorCopyWithImpl<_$_ContactListStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function(List<ContactModel> contacts) data,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function(List<ContactModel> contacts)? data,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function(List<ContactModel> contacts)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateError implements ContactListState {
  const factory _ContactListStateError({required final String message}) =
      _$_ContactListStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$_ContactListStateErrorCopyWith<_$_ContactListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContactListStateDataCopyWith<$Res> {
  factory _$$_ContactListStateDataCopyWith(_$_ContactListStateData value,
          $Res Function(_$_ContactListStateData) then) =
      __$$_ContactListStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContactModel> contacts});
}

/// @nodoc
class __$$_ContactListStateDataCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_ContactListStateData>
    implements _$$_ContactListStateDataCopyWith<$Res> {
  __$$_ContactListStateDataCopyWithImpl(_$_ContactListStateData _value,
      $Res Function(_$_ContactListStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$_ContactListStateData(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
    ));
  }
}

/// @nodoc

class _$_ContactListStateData implements _ContactListStateData {
  const _$_ContactListStateData({required final List<ContactModel> contacts})
      : _contacts = contacts;

  final List<ContactModel> _contacts;
  @override
  List<ContactModel> get contacts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactListState.data(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListStateData &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactListStateDataCopyWith<_$_ContactListStateData> get copyWith =>
      __$$_ContactListStateDataCopyWithImpl<_$_ContactListStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
    required TResult Function(List<ContactModel> contacts) data,
  }) {
    return data(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
    TResult? Function(List<ContactModel> contacts)? data,
  }) {
    return data?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    TResult Function(List<ContactModel> contacts)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateSuccess value) success,
    required TResult Function(_ContactListStateError value) error,
    required TResult Function(_ContactListStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactListStateInitial value)? initial,
    TResult? Function(_ContactListStateLoading value)? loading,
    TResult? Function(_ContactListStateSuccess value)? success,
    TResult? Function(_ContactListStateError value)? error,
    TResult? Function(_ContactListStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateSuccess value)? success,
    TResult Function(_ContactListStateError value)? error,
    TResult Function(_ContactListStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateData implements ContactListState {
  const factory _ContactListStateData(
      {required final List<ContactModel> contacts}) = _$_ContactListStateData;

  List<ContactModel> get contacts;
  @JsonKey(ignore: true)
  _$$_ContactListStateDataCopyWith<_$_ContactListStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
