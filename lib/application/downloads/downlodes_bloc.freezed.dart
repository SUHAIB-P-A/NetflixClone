// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downlodes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownlodesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getdownloadsimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getdownloadsimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getdownloadsimages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getdownloadsimages value) getdownloadsimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Getdownloadsimages value)? getdownloadsimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getdownloadsimages value)? getdownloadsimages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownlodesEventCopyWith<$Res> {
  factory $DownlodesEventCopyWith(
          DownlodesEvent value, $Res Function(DownlodesEvent) then) =
      _$DownlodesEventCopyWithImpl<$Res, DownlodesEvent>;
}

/// @nodoc
class _$DownlodesEventCopyWithImpl<$Res, $Val extends DownlodesEvent>
    implements $DownlodesEventCopyWith<$Res> {
  _$DownlodesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetdownloadsimagesImplCopyWith<$Res> {
  factory _$$GetdownloadsimagesImplCopyWith(_$GetdownloadsimagesImpl value,
          $Res Function(_$GetdownloadsimagesImpl) then) =
      __$$GetdownloadsimagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetdownloadsimagesImplCopyWithImpl<$Res>
    extends _$DownlodesEventCopyWithImpl<$Res, _$GetdownloadsimagesImpl>
    implements _$$GetdownloadsimagesImplCopyWith<$Res> {
  __$$GetdownloadsimagesImplCopyWithImpl(_$GetdownloadsimagesImpl _value,
      $Res Function(_$GetdownloadsimagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetdownloadsimagesImpl
    with DiagnosticableTreeMixin
    implements _Getdownloadsimages {
  const _$GetdownloadsimagesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownlodesEvent.getdownloadsimages()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DownlodesEvent.getdownloadsimages'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetdownloadsimagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getdownloadsimages,
  }) {
    return getdownloadsimages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getdownloadsimages,
  }) {
    return getdownloadsimages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getdownloadsimages,
    required TResult orElse(),
  }) {
    if (getdownloadsimages != null) {
      return getdownloadsimages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getdownloadsimages value) getdownloadsimages,
  }) {
    return getdownloadsimages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Getdownloadsimages value)? getdownloadsimages,
  }) {
    return getdownloadsimages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getdownloadsimages value)? getdownloadsimages,
    required TResult orElse(),
  }) {
    if (getdownloadsimages != null) {
      return getdownloadsimages(this);
    }
    return orElse();
  }
}

abstract class _Getdownloadsimages implements DownlodesEvent {
  const factory _Getdownloadsimages() = _$GetdownloadsimagesImpl;
}

/// @nodoc
mixin _$DownlodesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads> get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<Downloads>>>
      get downlodfailureorsuccessoption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownlodesStateCopyWith<DownlodesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownlodesStateCopyWith<$Res> {
  factory $DownlodesStateCopyWith(
          DownlodesState value, $Res Function(DownlodesState) then) =
      _$DownlodesStateCopyWithImpl<$Res, DownlodesState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<MainFailures, List<Downloads>>>
          downlodfailureorsuccessoption});
}

/// @nodoc
class _$DownlodesStateCopyWithImpl<$Res, $Val extends DownlodesState>
    implements $DownlodesStateCopyWith<$Res> {
  _$DownlodesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downlodfailureorsuccessoption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downlodfailureorsuccessoption: null == downlodfailureorsuccessoption
          ? _value.downlodfailureorsuccessoption
          : downlodfailureorsuccessoption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Downloads>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownlodesStateImplCopyWith<$Res>
    implements $DownlodesStateCopyWith<$Res> {
  factory _$$DownlodesStateImplCopyWith(_$DownlodesStateImpl value,
          $Res Function(_$DownlodesStateImpl) then) =
      __$$DownlodesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<MainFailures, List<Downloads>>>
          downlodfailureorsuccessoption});
}

/// @nodoc
class __$$DownlodesStateImplCopyWithImpl<$Res>
    extends _$DownlodesStateCopyWithImpl<$Res, _$DownlodesStateImpl>
    implements _$$DownlodesStateImplCopyWith<$Res> {
  __$$DownlodesStateImplCopyWithImpl(
      _$DownlodesStateImpl _value, $Res Function(_$DownlodesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downlodfailureorsuccessoption = null,
  }) {
    return _then(_$DownlodesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downlodfailureorsuccessoption: null == downlodfailureorsuccessoption
          ? _value.downlodfailureorsuccessoption
          : downlodfailureorsuccessoption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$DownlodesStateImpl
    with DiagnosticableTreeMixin
    implements _DownlodesState {
  const _$DownlodesStateImpl(
      {required this.isLoading,
      required final List<Downloads> downloads,
      required this.downlodfailureorsuccessoption})
      : _downloads = downloads;

  @override
  final bool isLoading;
  final List<Downloads> _downloads;
  @override
  List<Downloads> get downloads {
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  final Option<Either<MainFailures, List<Downloads>>>
      downlodfailureorsuccessoption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownlodesState(isLoading: $isLoading, downloads: $downloads, downlodfailureorsuccessoption: $downlodfailureorsuccessoption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownlodesState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('downloads', downloads))
      ..add(DiagnosticsProperty(
          'downlodfailureorsuccessoption', downlodfailureorsuccessoption));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownlodesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            (identical(other.downlodfailureorsuccessoption,
                    downlodfailureorsuccessoption) ||
                other.downlodfailureorsuccessoption ==
                    downlodfailureorsuccessoption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_downloads),
      downlodfailureorsuccessoption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownlodesStateImplCopyWith<_$DownlodesStateImpl> get copyWith =>
      __$$DownlodesStateImplCopyWithImpl<_$DownlodesStateImpl>(
          this, _$identity);
}

abstract class _DownlodesState implements DownlodesState {
  const factory _DownlodesState(
      {required final bool isLoading,
      required final List<Downloads> downloads,
      required final Option<Either<MainFailures, List<Downloads>>>
          downlodfailureorsuccessoption}) = _$DownlodesStateImpl;

  @override
  bool get isLoading;
  @override
  List<Downloads> get downloads;
  @override
  Option<Either<MainFailures, List<Downloads>>>
      get downlodfailureorsuccessoption;
  @override
  @JsonKey(ignore: true)
  _$$DownlodesStateImplCopyWith<_$DownlodesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
