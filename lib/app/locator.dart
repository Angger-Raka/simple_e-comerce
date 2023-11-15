import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:auth/auth.dart';

final getIt = GetIt.instance;

Future<void> setUpLocator(Flavor flavor) async {
  _setUpCore();
  _setUpModular(flavor);
}

Future<void> _setUpCore() async {
  final prefs = await SharedPreferences.getInstance();
  final dio = Dio();

  getIt
    ..registerLazySingleton<Preference>(() => Preference(prefs))
    ..registerLazySingleton<Dio>(() => DioClient(dio).client);
}

Future<void> _setUpModular(Flavor flavor) async {
  //! ============================== Settings ============================== //
  //? Data
  getIt.registerLazySingleton<SettingsLocalDataSources>(
    () => SettingsLocalDataSourcesImpl(getIt<Preference>()),
  );
  getIt.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(getIt<SettingsLocalDataSources>()),
  );

  //? Domain
  getIt.registerLazySingleton<SettingsUseCase>(
    () => SettingsUseCase(getIt<SettingsRepository>()),
  );

  getIt.registerLazySingleton(
    () => SetSettingUseCase(getIt<SettingsRepository>()),
  );

  //? Presentation
  getIt.registerFactory(
    () => SettingsBloc(
      usecaseSetting: getIt<SettingsUseCase>(),
      usecaseSet: getIt<SetSettingUseCase>(),
    ),
  );

  //! ============================ End Settings ============================ //

  //! ================================ Auth ================================ //

  //? Data
  getIt.registerLazySingleton<AuthRemoteDataSources>(
    () => AuthRemoteDataSourcesImpl(
      getIt<Dio>(),
      getIt<Preference>(),
    ),
  );

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      getIt<AuthRemoteDataSources>(),
    ),
  );

  //? Domain
  getIt.registerLazySingleton(
    () => StatusAuthUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton(
    () => LogoutUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton(
    () => LoginUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton(
    () => RegisterUseCase(getIt<AuthRepository>()),
  );

  //? Presentation
  getIt.registerFactory(
    () => AuthenticateBloc(getIt<StatusAuthUseCase>()),
  );
  getIt.registerFactory(
    () => LoginBloc(getIt<LoginUseCase>()),
  );
  getIt.registerFactory(
    () => RegisterBloc(
      getIt<RegisterUseCase>(),
    ),
  );

  //! ============================== End Auth ============================== //

  //! ================================ Home ================================ //

  //! ============================== End Home ============================== //
}
