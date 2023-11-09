import 'dart:async';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:settings/settings.dart';

class SetSettingUseCase {
  final SettingsRepository repository;

  SetSettingUseCase(this.repository);

  FutureOr<Either<GenericException, bool>> save(
      {required Settings settings}) async {
    return await repository.saveSettings(settings);
  }

  FutureOr<Either<GenericException, bool>> setLanguage(
      {required Language language}) async {
    return await repository.setLanguage(language);
  }

  FutureOr<Either<GenericException, bool>> setAppTheme(
      {required AppTheme appTheme}) async {
    return await repository.setAppTheme(appTheme);
  }
}
