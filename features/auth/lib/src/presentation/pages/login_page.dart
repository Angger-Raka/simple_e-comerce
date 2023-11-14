import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/settings.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final settings = context.settings;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          80.sbh,
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: Image.asset(
                MainAssets.logo,
                width: 100,
                height: 100,
              )),
          24.sbh,
          const Center(
            child: Text(
              "FIC 9",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorName.dark,
              ),
            ),
          ),
          8.sbh,
          Center(
            child: Text(
              l10n.loginDesc,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
          ),
          24.sbh,
          CustomTextField(
            controller: usernameController,
            label: l10n.username,
          ),
          12.sbh,
          CustomTextField(
            controller: passwordController,
            label: l10n.password,
            obscureText: true,
          ),
          24.sbh,
          Button.filled(
            onPressed: () {
              context.push(NamedRoutes.dashboard);
            },
            label: l10n.login,
          ),
          40.sbh,
          SizedBox(
            width: context.sw,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    final theme = context.settings.appTheme;
                    SettingsUtils(context).changeTheme(theme!);
                  },
                  icon: Icon(
                    settings.appTheme == AppTheme.light
                        ? Icons.brightness_7
                        : Icons.brightness_2,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    final language = context.settings.language;
                    SettingsUtils(context).changeLanguage(language!);
                  },
                  icon: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: SvgPicture.asset(
                      settings.language!.code == 'en'
                          ? MainAssets.flagEn
                          : MainAssets.flagId,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          40.sbh,
          Center(
            child: InkWell(
              onTap: () {
                context.push(NamedRoutes.register);
              },
              child: Text.rich(
                TextSpan(
                  text: l10n.dontHaveAccount,
                  children: [
                    TextSpan(
                      text: l10n.register,
                      style: const TextStyle(color: ColorName.primary),
                    ),
                  ],
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: ColorName.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
