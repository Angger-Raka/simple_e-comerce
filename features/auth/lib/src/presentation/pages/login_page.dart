import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/settings.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
    final settings = context.watch<SettingsBloc>().state.settings;

    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         final theme =
      //             context.read<SettingsBloc>().state.settings.appTheme;
      //         changeTheme(theme!);
      //       },
      //       icon: Icon(
      //         settings.appTheme == AppTheme.light
      //             ? Icons.brightness_7
      //             : Icons.brightness_2,
      //       ),
      //     )
      //   ],
      // ),
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
          const Center(
            child: Text(
              "Masuk untuk melanjutkan",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
          ),
          24.sbh,
          CustomTextField(
            controller: usernameController,
            label: 'Username',
          ),
          12.sbh,
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obscureText: true,
          ),
          24.sbh,
          Button.filled(
            onPressed: () {
              context.push(NamedRoutes.home);
            },
            label: 'Masuk',
          ),
          40.sbh,
          Container(
            width: context.sw,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    final theme =
                        context.read<SettingsBloc>().state.settings.appTheme;
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
                    final language =
                        context.read<SettingsBloc>().state.settings.language;
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text.rich(
                TextSpan(
                  text: "Belum punya akun? ",
                  children: [
                    TextSpan(
                      text: "Register",
                      style: TextStyle(color: ColorName.primary),
                    ),
                  ],
                  style: TextStyle(
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
