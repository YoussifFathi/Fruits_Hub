class AppKeys {
  // Private constructor to prevent instantiation
  AppKeys._();

  // Singleton instance
  static final AppKeys _instance = AppKeys._();

  // Factory constructor to return the singleton instance
  factory AppKeys() => _instance;

  static const String viewedOnboarding = 'viewed_onboarding';
}
