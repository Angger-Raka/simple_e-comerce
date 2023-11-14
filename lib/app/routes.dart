import 'package:core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';
import 'package:settings/settings.dart';
import 'package:auth/auth.dart';
import 'package:order/order.dart';

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
      path: NamedRoutes.dashboard,
      builder: (context, state) => const DashboardPage(),
    ),
    GoRoute(
      path: NamedRoutes.productDetail,
      builder: (context, state) => const ProductDetailPage(),
    ),
    GoRoute(
      path: NamedRoutes.profile,
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: NamedRoutes.order,
      builder: (context, state) => const OrderPage(),
    ),
    GoRoute(
      path: NamedRoutes.shippingAddress,
      builder: (context, state) => const ShippingAddressPage(),
    ),
    GoRoute(
      path: NamedRoutes.payment,
      builder: (context, state) {
        if (state.extra != null) {
          final url = state.extra as String;
          return PaymentPage(url: url);
        } else {
          return const Internalerror();
        }
      },
    ),
  ],
);
