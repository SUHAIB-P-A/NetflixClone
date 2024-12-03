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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gethomescreendata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gethomescreendata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gethomescreendata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gethomescreendata value) gethomescreendata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Gethomescreendata value)? gethomescreendata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gethomescreendata value)? gethomescreendata,
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
abstract class _$$GethomescreendataImplCopyWith<$Res> {
  factory _$$GethomescreendataImplCopyWith(_$GethomescreendataImpl value,
          $Res Function(_$GethomescreendataImpl) then) =
      __$$GethomescreendataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GethomescreendataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GethomescreendataImpl>
    implements _$$GethomescreendataImplCopyWith<$Res> {
  __$$GethomescreendataImplCopyWithImpl(_$GethomescreendataImpl _value,
      $Res Function(_$GethomescreendataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GethomescreendataImpl implements Gethomescreendata {
  const _$GethomescreendataImpl();

  @override
  String toString() {
    return 'HomeEvent.gethomescreendata()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GethomescreendataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gethomescreendata,
  }) {
    return gethomescreendata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gethomescreendata,
  }) {
    return gethomescreendata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gethomescreendata,
    required TResult orElse(),
  }) {
    if (gethomescreendata != null) {
      return gethomescreendata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gethomescreendata value) gethomescreendata,
  }) {
    return gethomescreendata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Gethomescreendata value)? gethomescreendata,
  }) {
    return gethomescreendata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gethomescreendata value)? gethomescreendata,
    required TResult orElse(),
  }) {
    if (gethomescreendata != null) {
      return gethomescreendata(this);
    }
    return orElse();
  }
}

abstract class Gethomescreendata implements HomeEvent {
  const factory Gethomescreendata() = _$GethomescreendataImpl;
}

/// @nodoc
mixin _$HomeState {
  List<HotAndNewData> get pastYearMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get trendingNow => throw _privateConstructorUsedError;
  List<HotAndNewData> get tenseDramas => throw _privateConstructorUsedError;
  List<HotAndNewData> get southIndianCinima =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get top10Movies => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

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
      {List<HotAndNewData> pastYearMovieList,
      List<HotAndNewData> trendingNow,
      List<HotAndNewData> tenseDramas,
      List<HotAndNewData> southIndianCinima,
      List<HotAndNewData> top10Movies,
      bool isLoading,
      bool isError});
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
    Object? pastYearMovieList = null,
    Object? trendingNow = null,
    Object? tenseDramas = null,
    Object? southIndianCinima = null,
    Object? top10Movies = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      pastYearMovieList: null == pastYearMovieList
          ? _value.pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingNow: null == trendingNow
          ? _value.trendingNow
          : trendingNow // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramas: null == tenseDramas
          ? _value.tenseDramas
          : tenseDramas // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianCinima: null == southIndianCinima
          ? _value.southIndianCinima
          : southIndianCinima // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      top10Movies: null == top10Movies
          ? _value.top10Movies
          : top10Movies // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HotAndNewData> pastYearMovieList,
      List<HotAndNewData> trendingNow,
      List<HotAndNewData> tenseDramas,
      List<HotAndNewData> southIndianCinima,
      List<HotAndNewData> top10Movies,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pastYearMovieList = null,
    Object? trendingNow = null,
    Object? tenseDramas = null,
    Object? southIndianCinima = null,
    Object? top10Movies = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$InitialImpl(
      pastYearMovieList: null == pastYearMovieList
          ? _value._pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingNow: null == trendingNow
          ? _value._trendingNow
          : trendingNow // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramas: null == tenseDramas
          ? _value._tenseDramas
          : tenseDramas // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianCinima: null == southIndianCinima
          ? _value._southIndianCinima
          : southIndianCinima // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      top10Movies: null == top10Movies
          ? _value._top10Movies
          : top10Movies // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<HotAndNewData> pastYearMovieList,
      required final List<HotAndNewData> trendingNow,
      required final List<HotAndNewData> tenseDramas,
      required final List<HotAndNewData> southIndianCinima,
      required final List<HotAndNewData> top10Movies,
      required this.isLoading,
      required this.isError})
      : _pastYearMovieList = pastYearMovieList,
        _trendingNow = trendingNow,
        _tenseDramas = tenseDramas,
        _southIndianCinima = southIndianCinima,
        _top10Movies = top10Movies;

  final List<HotAndNewData> _pastYearMovieList;
  @override
  List<HotAndNewData> get pastYearMovieList {
    if (_pastYearMovieList is EqualUnmodifiableListView)
      return _pastYearMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastYearMovieList);
  }

  final List<HotAndNewData> _trendingNow;
  @override
  List<HotAndNewData> get trendingNow {
    if (_trendingNow is EqualUnmodifiableListView) return _trendingNow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNow);
  }

  final List<HotAndNewData> _tenseDramas;
  @override
  List<HotAndNewData> get tenseDramas {
    if (_tenseDramas is EqualUnmodifiableListView) return _tenseDramas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramas);
  }

  final List<HotAndNewData> _southIndianCinima;
  @override
  List<HotAndNewData> get southIndianCinima {
    if (_southIndianCinima is EqualUnmodifiableListView)
      return _southIndianCinima;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianCinima);
  }

  final List<HotAndNewData> _top10Movies;
  @override
  List<HotAndNewData> get top10Movies {
    if (_top10Movies is EqualUnmodifiableListView) return _top10Movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top10Movies);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(pastYearMovieList: $pastYearMovieList, trendingNow: $trendingNow, tenseDramas: $tenseDramas, southIndianCinima: $southIndianCinima, top10Movies: $top10Movies, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._pastYearMovieList, _pastYearMovieList) &&
            const DeepCollectionEquality()
                .equals(other._trendingNow, _trendingNow) &&
            const DeepCollectionEquality()
                .equals(other._tenseDramas, _tenseDramas) &&
            const DeepCollectionEquality()
                .equals(other._southIndianCinima, _southIndianCinima) &&
            const DeepCollectionEquality()
                .equals(other._top10Movies, _top10Movies) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pastYearMovieList),
      const DeepCollectionEquality().hash(_trendingNow),
      const DeepCollectionEquality().hash(_tenseDramas),
      const DeepCollectionEquality().hash(_southIndianCinima),
      const DeepCollectionEquality().hash(_top10Movies),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final List<HotAndNewData> pastYearMovieList,
      required final List<HotAndNewData> trendingNow,
      required final List<HotAndNewData> tenseDramas,
      required final List<HotAndNewData> southIndianCinima,
      required final List<HotAndNewData> top10Movies,
      required final bool isLoading,
      required final bool isError}) = _$InitialImpl;

  @override
  List<HotAndNewData> get pastYearMovieList;
  @override
  List<HotAndNewData> get trendingNow;
  @override
  List<HotAndNewData> get tenseDramas;
  @override
  List<HotAndNewData> get southIndianCinima;
  @override
  List<HotAndNewData> get top10Movies;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
