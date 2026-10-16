// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:app_flutter/src/features/home/data/home_mock_data_source.dart'
    as _i464;
import 'package:app_flutter/src/features/home/data/home_repository_impl.dart'
    as _i93;
import 'package:app_flutter/src/features/home/domain/home_repository.dart'
    as _i20;
import 'package:app_flutter/src/features/home/presentation/home/home_cubit.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i464.HomeRemoteDataSource>(
      () => _i464.HomeMockDataSource(),
    );
    gh.lazySingleton<_i20.HomeRepository>(
      () => _i93.HomeRepositoryImpl(gh<_i464.HomeRemoteDataSource>()),
    );
    gh.factory<_i5.HomeCubit>(() => _i5.HomeCubit(gh<_i20.HomeRepository>()));
    return this;
  }
}
