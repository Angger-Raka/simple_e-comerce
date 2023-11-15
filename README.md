<!-- [![Static Badge](https://img.shields.io/badge/Framework-Flutter-blue?style=f)](https://flutter.dev/)

[![Static Badge](https://img.shields.io/badge/Language-Dart-blue?style=f)](https://dart.dev/)

# Flutter Starter

Ini adalah sebuah boilerplate untuk flutter. projek ini mengusung Clean Architecture dan BLoC sebagai state management. Boilerplate ini dirancang untuk memudahkan pengembangan aplikasi Flutter yang terstruktur dan mudah dirawat. fungsi dasarnya dapat mengubah bahasa dan theme dengan menekan tombol

## Get Started

Pertama kita buat terlebih dahulu file environment yang terdiri dari

- .env.development
- .env.production
- .env.staging

setelah itu tambahkan kode berikut: (sesuaikan dengan API yang ingin di gunakan)

```
BASE_URL=https://google.com
```

Setelah itu pub get pada seluruh module dan parent directory

## Dependency

Ini adalah bebrapa list Dependency yang ada di projek ini:

| Plugin                | Version |
| --------------------- | ------- |
| Dio                   | ^5.3.3  |
| equatable             | ^2.0.5  |
| dartz                 | ^0.10.1 |
| build_runner          | ^2.4.6  |
| flutter_bloc          | ^8.1.3  |
| flutter_dotenv        | ^5.1.0  |
| flutter_localizations | 0.1.14  |
| get_it                | ^7.6.4  |
| go_router             | ^12.0.1 |
| json_annotation       | ^4.8.1  |
| json_serializable     | ^6.7.1  |
| shared_preferences    | ^2.2.2  |
| intl                  | ^0.18.1 |

## Plugins

if you're using Visual Studio Code you're can install :

- [Better Comments][better_comments_plugin]
- [Json to Dart Model][json_to_dart_model]
- [Flutter Clean Architecture Feature Scaffolding][clean_architecture_plugin]
- [bloc][bloc_plugin]

## Structure

projek ini memiliki structure folder berikut:

```
Flutter-Starter/
├── featrures/
│   ├── settings/
│   │   └── lib/
│   │       └── src/
│   │           ├── data/
│   │           │   ├── data_sources/
│   │           │   ├── models/
│   │           │   └── repositories/
│   │           ├── domain/
│   │           │   ├── entities/
│   │           │   ├── repository/
│   │           │   └── use_cases/
│   │           └── presentation/
│   │               ├── bloc/
│   │               ├── pages/
│   │               └── widgets/
│   └── home(same as settings)
├── lib/
│   ├── app/
│   └── l10n/
└── libraries/
    ├── core/
    └── shared/

```

[better_comments_plugin]: https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments
[json_to_dart_model]: https://marketplace.visualstudio.com/items?itemName=hirantha.json-to-dart
[clean_architecture_plugin]: https://marketplace.visualstudio.com/items?itemName=FullyStackedDevelopment.flutter-clean-architecture-scaffold
[bloc_plugin]: https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc

<!-- [dart_language_badge]: https://img.shields.io/badge/Language-Dart-blue
[license]: https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat
[team]: https://img.shields.io/badge/Made%20with%20❤%EF%B8%8F-by%20Emerging%20Product%20Team-red.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[plugin_bloc]: https://plugins.jetbrains.com/plugin/12129-bloc
[plugin_clean_arch]: https://plugins.jetbrains.com/plugin/13470-clean-architecture-for-flutter
[plugin_flutter_intl]: https://plugins.jetbrains.com/plugin/13666-flutter-intl
[vs_plugin_bloc]: https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc --> -->
