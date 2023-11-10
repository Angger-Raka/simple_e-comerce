import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/settings.dart';

class SettingsUtils {
  SettingsUtils(this.ctx);

  final BuildContext ctx;

  Future<void> changeTheme(AppTheme theme) async {
    theme == AppTheme.dark
        ? ctx.read<SettingsBloc>().add(
              const SetAppTheme(AppTheme.light),
            )
        : ctx.read<SettingsBloc>().add(
              const SetAppTheme(AppTheme.dark),
            );
  }

  Future<void> changeLanguage(Language language) async {
    language.code == 'en'
        ? ctx.read<SettingsBloc>().add(
              const SetLanguage(
                Language(code: 'id', name: 'Indonesia'),
              ),
            )
        : ctx.read<SettingsBloc>().add(
              const SetLanguage(
                Language(code: 'en', name: 'English'),
              ),
            );
  }
}
