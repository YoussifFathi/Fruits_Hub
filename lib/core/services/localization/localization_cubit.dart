import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_fruits_hub/core/di/dependency_injection.dart';
import 'package:my_fruits_hub/core/services/shared_preferences/shared_preferences_service.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  static const String _localeKey = 'locale';
  final SharedPreferencesService _prefsService;

  LocalizationCubit()
      : _prefsService = getIt<SharedPreferencesService>(),
        super(LocalizationInitial()) {
    loadSavedLocale();
  }

  /// Default locale when no locale is saved
  final Locale _defaultLocale = const Locale('ar');

  /// Supported locales in the application
  final List<Locale> supportedLocales = const [
    Locale('en'), // English
    Locale('ar'), // Arabic
  ];

  /// Load the saved locale from SharedPreferences or use default
  Future<void> loadSavedLocale() async {
    final savedLocaleString = await _prefsService.getString(_localeKey);

    if (savedLocaleString != null) {
      changeLocale(Locale(savedLocaleString));
    } else {
      changeLocale(_defaultLocale);
    }
  }

  /// Change the app locale and save the selection
  Future<void> changeLocale(Locale locale) async {
    // Check if locale is supported
    if (!_isLocaleSupported(locale)) {
      return;
    }

    // Save locale preference
    await _prefsService.setString(_localeKey, locale.languageCode);

    // Emit new state with the selected locale
    emit(LocalizationLoaded(locale: locale));
  }

  /// Toggle between English and Arabic
  Future<void> toggleLocale() async {
    if (state is LocalizationLoaded) {
      final currentLocale = (state as LocalizationLoaded).locale;
      final newLocale = currentLocale.languageCode == 'en'
          ? const Locale('ar')
          : const Locale('en');

      await changeLocale(newLocale);
    } else {
      await changeLocale(_defaultLocale);
    }
  }

  /// Get the current locale
  Locale getCurrentLocale() {
    if (state is LocalizationLoaded) {
      return (state as LocalizationLoaded).locale;
    }
    return _defaultLocale;
  }

  /// Check if the locale is supported by the app
  bool _isLocaleSupported(Locale locale) {
    return supportedLocales.any(
      (supportedLocale) => supportedLocale.languageCode == locale.languageCode,
    );
  }
}
