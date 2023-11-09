enum Flavor { dev, stag, prod }

class F {
  static late Flavor flavor;
}

extension FlavorX on Flavor {
  bool get isDevelopment {
    return this == Flavor.dev;
  }

  bool get isStaging {
    return this == Flavor.stag;
  }

  bool get isProduction {
    return this == Flavor.prod;
  }

  String get name {
    switch (this) {
      case Flavor.dev:
        return 'development';
      case Flavor.stag:
        return 'staging';
      case Flavor.prod:
        return 'production';
      default:
        return 'dev';
    }
  }

  String get env {
    switch (this) {
      case Flavor.dev:
        return '.env.development';
      case Flavor.stag:
        return '.env.staging';
      case Flavor.prod:
        return '.env.production';
      default:
        return '.env.dev';
    }
  }
}
