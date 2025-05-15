import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_fruits_hub/core/services/localization/localization_cubit.dart';
import 'package:my_fruits_hub/core/services/theme/theme_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, 'Appearance'),
            const SizedBox(height: 8),
            _buildThemeSettings(context),
            const SizedBox(height: 24),
            _buildSectionTitle(context, 'Language'),
            const SizedBox(height: 8),
            _buildLanguageSettings(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildThemeSettings(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        final themeMode =
            state is ThemeLoaded ? state.themeMode : ThemeMode.system;

        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildThemeOption(
                  context,
                  'System Theme',
                  'Follow system settings',
                  themeMode == ThemeMode.system,
                  () => context.read<ThemeCubit>().setTheme(ThemeMode.system),
                  Icons.brightness_auto,
                ),
                const Divider(),
                _buildThemeOption(
                  context,
                  'Light Theme',
                  'Always use light theme',
                  themeMode == ThemeMode.light,
                  () => context.read<ThemeCubit>().setTheme(ThemeMode.light),
                  Icons.light_mode,
                ),
                const Divider(),
                _buildThemeOption(
                  context,
                  'Dark Theme',
                  'Always use dark theme',
                  themeMode == ThemeMode.dark,
                  () => context.read<ThemeCubit>().setTheme(ThemeMode.dark),
                  Icons.dark_mode,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildThemeOption(
    BuildContext context,
    String title,
    String subtitle,
    bool selected,
    VoidCallback onTap,
    IconData iconData,
  ) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            if (selected)
              Icon(
                Icons.check_circle,
                color: Theme.of(context).colorScheme.primary,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageSettings(BuildContext context) {
    return BlocBuilder<LocalizationCubit, LocalizationState>(
      builder: (context, state) {
        final isEnglish = state is LocalizationLoaded
            ? state.locale.languageCode == 'en'
            : false;

        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLanguageOption(
                  context,
                  'English',
                  isEnglish,
                  () => context
                      .read<LocalizationCubit>()
                      .changeLocale(const Locale('en')),
                ),
                const Divider(),
                _buildLanguageOption(
                  context,
                  'العربية (Arabic)',
                  !isEnglish,
                  () => context
                      .read<LocalizationCubit>()
                      .changeLocale(const Locale('ar')),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageOption(
    BuildContext context,
    String language,
    bool selected,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                language,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            if (selected)
              Icon(
                Icons.check_circle,
                color: Theme.of(context).colorScheme.primary,
              ),
          ],
        ),
      ),
    );
  }
}
