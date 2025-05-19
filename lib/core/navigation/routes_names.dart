class RoutesNames {
  static final RoutesNames _singleton = RoutesNames._internal();
  factory RoutesNames() => _singleton;
  RoutesNames._internal();

  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String auth = '/auth';
  static const String home = '/home';
  static const String settings = '/settings';
}
