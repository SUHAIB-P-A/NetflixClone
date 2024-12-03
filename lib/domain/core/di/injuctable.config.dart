// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix/application/downloads/downlodes_bloc.dart' as _i10;
import 'package:netflix/application/fastLaugh/fast_laugh_bloc.dart' as _i9;
import 'package:netflix/application/Home/home_bloc.dart' as _i11;
import 'package:netflix/application/hotandnew/hot_and_new_bloc.dart' as _i12;
import 'package:netflix/application/search/search_bloc.dart' as _i8;
import 'package:netflix/domain/downloads/i_download_repo.dart' as _i4;
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_services.dart'
    as _i6;
import 'package:netflix/infrastructure/download_repository/download_repository.dart'
    as _i5;
import 'package:netflix/infrastructure/hot_and_new_/hot_and_new_impli.dart'
    as _i7;
import 'package:netflix/infrastructure/scarchservices/searchservices.dart'
    as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.Searchservices>(() => _i3.Searchservices());
    gh.lazySingleton<_i4.IDownloadRepo>(() => _i5.DownloadRepository());
    gh.lazySingleton<_i6.HotAndNewServices>(
        () => _i7.HotAndNewImplimentation());
    gh.factory<_i8.SearchBloc>(() => _i8.SearchBloc(
          gh<_i4.IDownloadRepo>(),
          gh<_i3.Searchservices>(),
        ));
    gh.factory<_i9.FastLaughBloc>(
        () => _i9.FastLaughBloc(gh<_i4.IDownloadRepo>()));
    gh.factory<_i10.DownlodesBloc>(
        () => _i10.DownlodesBloc(gh<_i4.IDownloadRepo>()));
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i6.HotAndNewServices>()));
    gh.factory<_i12.HotAndNewBloc>(
        () => _i12.HotAndNewBloc(gh<_i6.HotAndNewServices>()));
    return this;
  }
}
