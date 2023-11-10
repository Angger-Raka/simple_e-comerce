import 'package:core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';
import 'package:settings/settings.dart';
import 'package:auth/auth.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: NamedRoutes.initial,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: NamedRoutes.settings,
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: NamedRoutes.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: NamedRoutes.register,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: NamedRoutes.home,
      builder: (context, state) => const DashboardPage(),
    ),
  ],
);
