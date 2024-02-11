// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastLaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughEventCopyWith<$Res> {
  factory $FastLaughEventCopyWith(
          FastLaughEvent value, $Res Function(FastLaughEvent) then) =
      _$FastLaughEventCopyWithImpl<$Res, FastLaughEvent>;
}

/// @nodoc
class _$FastLaughEventCopyWithImpl<$Res, $Val extends FastLaughEvent>
    implements $FastLaughEventCopyWith<$Res> {
  _$FastLaughEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$FastLaughEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'FastLaughEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements FastLaughEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
mixin _$FastLaughState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get iserror => throw _privateConstructorUsedError;
  List<Downloads> get listofmovies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaughStateCopyWith<FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughStateCopyWith<$Res> {
  factory $FastLaughStateCopyWith(
          FastLaughState value, $Res Function(FastLaughState) then) =
      _$FastLaughStateCopyWithImpl<$Res, FastLaughState>;
  @useResult
  $Res call({bool isloading, bool iserror, List<Downloads> listofmovies});
}

/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res, $Val extends FastLaughState>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? iserror = null,
    Object? listofmovies = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
      listofmovies: null == listofmovies
          ? _value.listofmovies
          : listofmovies // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FastLaughStateImplCopyWith<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  factory _$$FastLaughStateImplCopyWith(_$FastLaughStateImpl value,
          $Res Function(_$FastLaughStateImpl) then) =
      __$$FastLaughStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isloading, bool iserror, List<Downloads> listofmovies});
}

/// @nodoc
class __$$FastLaughStateImplCopyWithImpl<$Res>
    extends _$FastLaughStateCopyWithImpl<$Res, _$FastLaughStateImpl>
    implements _$$FastLaughStateImplCopyWith<$Res> {
  __$$FastLaughStateImplCopyWithImpl(
      _$FastLaughStateImpl _value, $Res Function(_$FastLaughStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? iserror = null,
    Object? listofmovies = null,
  }) {
    return _then(_$FastLaughStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
      listofmovies: null == listofmovies
          ? _value._listofmovies
          : listofmovies // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ));
  }
}

/// @nodoc

class _$FastLaughStateImpl implements _FastLaughState {
  const _$FastLaughStateImpl(
      {required this.isloading,
      required this.iserror,
      required final List<Downloads> listofmovies})
      : _listofmovies = listofmovies;

  @override
  final bool isloading;
  @override
  final bool iserror;
  final List<Downloads> _listofmovies;
  @override
  List<Downloads> get listofmovies {
    if (_listofmovies is EqualUnmodifiableListView) return _listofmovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listofmovies);
  }

  @override
  String toString() {
    return 'FastLaughState(isloading: $isloading, iserror: $iserror, listofmovies: $listofmovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FastLaughStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.iserror, iserror) || other.iserror == iserror) &&
            const DeepCollectionEquality()
                .equals(other._listofmovies, _listofmovies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, iserror,
      const DeepCollectionEquality().hash(_listofmovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FastLaughStateImplCopyWith<_$FastLaughStateImpl> get copyWith =>
      __$$FastLaughStateImplCopyWithImpl<_$FastLaughStateImpl>(
          this, _$identity);
}

abstract class _FastLaughState implements FastLaughState {
  const factory _FastLaughState(
      {required final bool isloading,
      required final bool iserror,
      required final List<Downloads> listofmovies}) = _$FastLaughStateImpl;

  @override
  bool get isloading;
  @override
  bool get iserror;
  @override
  List<Downloads> get listofmovies;
  @override
  @JsonKey(ignore: true)
  _$$FastLaughStateImplCopyWith<_$FastLaughStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
