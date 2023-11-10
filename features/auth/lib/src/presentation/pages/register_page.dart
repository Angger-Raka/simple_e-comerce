import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/settings.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state.settings;

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
          12.0.sbh,
          const Center(
            child: Text(
              "Mari mulai",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorName.dark,
              ),
            ),
          ),
          8.0.sbh,
          const Center(
            child: Text(
              "Buat akun baru",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
          ),
          12.0.sbh,
          CustomTextField(
            controller: emailController,
            label: 'Email',
          ),
          12.0.sbh,
          CustomTextField(
            controller: nameController,
            label: 'Name',
          ),
          12.0.sbh,
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obscureText: true,
          ),
          12.0.sbh,
          CustomTextField(
            controller: confirmPasswordController,
            label: 'Konfirmasi Password',
            obscureText: true,
          ),
          24.0.sbh,
          Button.filled(
            onPressed: () {
              Navigator.pop(context);
            },
            label: 'Daftar',
          ),
          20.sbh,
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
              ],
            ),
          ),
          20.sbh,
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text.rich(
                TextSpan(
                  text: "Sudah punya akun? ",
                  children: [
                    TextSpan(
                      text: "Sign In",
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