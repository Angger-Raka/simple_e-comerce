import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 3000),
      () => context.go(NamedRoutes.login),
    );

    return Scaffold(
      body: Center(
          child: Image.asset(
        MainAssets.logo,
        width: 200,
        height: 200,
      )),
    );
  }
}
