import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auth/auth.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticateBloc, AuthenticateState>(
      listener: (context, state) {
        Future.delayed(
          const Duration(milliseconds: 3000),
          () {
            if (state is Unauthenticated) {
              context.go(NamedRoutes.login);
            } else {
              context.go(NamedRoutes.dashboard);
            }
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: Image.asset(
            MainAssets.logo,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
