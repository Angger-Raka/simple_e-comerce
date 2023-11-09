import 'dart:io';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starter/app/app.dart';
import 'package:bloc/bloc.dart';
export '../app/app.dart';

class DevHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const flavor = Flavor.stag;
  const screen = ScreenOrientation.portrait;
  await dotenv.load(fileName: flavor.env);

  await setUpLocator(flavor);
  await systemOrientation(screen);
  runnerApp();
}

void runnerApp() {
  Bloc.observer = AppBlocObserver();
  HttpOverrides.global = DevHttpOverrides();
  runApp(const App());
}
