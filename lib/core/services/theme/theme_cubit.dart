import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_fruits_hub/core/di/dependency_injection.dart';
import 'package:my_fruits_hub/core/services/shared_preferences/shared_preferences_service.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  static const String _themeKey = 'theme_mode';
  final SharedPreferencesService _prefsService;

  ThemeCubit()
      : _prefsService = getIt<SharedPreferencesService>(),
        super(ThemeInitial()) {
    loadSavedTheme();
  }

  /// Load the saved theme from SharedPreferences or use system default
  Future<void> loadSavedTheme() async {
    final savedTheme = await _prefsService.getString(_themeKey);

    if (savedTheme != null) {
      switch (savedTheme) {
        case 'light':
          setTheme(ThemeMode.light);
          break;
        case 'dark':
          setTheme(ThemeMode.dark);
          break;
        default:
          setTheme(ThemeMode.system);
      }
    } else {
      // Default to system theme if no preference is saved
      setTheme(ThemeMode.system);
    }
  }

  /// Change the app theme and save the selection
  Future<void> setTheme(ThemeMode themeMode) async {
    // Save theme preference
    String themeModeString;

    switch (themeMode) {
      case ThemeMode.light:
        themeModeString = 'light';
        break;
      case ThemeMode.dark:
        themeModeString = 'dark';
        break;
      default:
        themeModeString = 'system';
    }

    await _prefsService.setString(_themeKey, themeModeString);

    // Emit new state with the selected theme
    emit(ThemeLoaded(themeMode: themeMode));
  }

  /// Toggle between light and dark themes
  Future<void> toggleTheme() async {
    if (state is ThemeLoaded) {
      final currentTheme = (state as ThemeLoaded).themeMode;

      switch (currentTheme) {
        case ThemeMode.light:
          await setTheme(ThemeMode.dark);
          break;
        case ThemeMode.dark:
          await setTheme(ThemeMode.light);
          break;
        default:
          // If using system theme, switch to light theme first
          await setTheme(ThemeMode.light);
      }
    } else {
      // Default to light theme if not loaded yet
      await setTheme(ThemeMode.light);
    }
  }

  /// Get the current theme mode
  ThemeMode getCurrentThemeMode() {
    if (state is ThemeLoaded) {
      return (state as ThemeLoaded).themeMode;
    }
    return ThemeMode.system;
  }
}
