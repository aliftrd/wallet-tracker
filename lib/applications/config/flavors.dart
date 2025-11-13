enum Flavor { DEVELOPMENT, PRODUCTION }

class Flavors {
  static Flavors? _instance;
  final Flavor flavor;
  final String baseUrl;

  Flavors._({
    required this.flavor,
    required this.baseUrl,
  });

  factory Flavors.create({
    required Flavor flavor,
    required String baseUrl,
  }) {
    _instance ??= Flavors._(
      flavor: flavor,
      baseUrl: baseUrl,
    );
    return _instance!;
  }

  static Flavors get instance {
    if (_instance == null) {
      throw Exception('Flavors has not been initialized');
    }
    return _instance!;
  }

  bool isDevelopment() => flavor == Flavor.DEVELOPMENT;
  bool isProduction() => flavor == Flavor.PRODUCTION;
}
