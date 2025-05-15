import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_fruits_hub/core/di/dependency_injection.dart';
import 'package:my_fruits_hub/core/navigation/on_generate_route.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';
import 'package:my_fruits_hub/core/services/localization/localization_cubit.dart';
import 'package:my_fruits_hub/core/services/theme/theme_cubit.dart';
import 'package:my_fruits_hub/core/theme/app_theme.dart';
import 'package:my_fruits_hub/generated/l10n.dart';

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LocalizationCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ThemeCubit>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return BlocBuilder<LocalizationCubit, LocalizationState>(
                builder: (context, localeState) {
                  final locale = localeState is LocalizationLoaded
                      ? localeState.locale
                      : const Locale('ar');

                  final themeMode = themeState is ThemeLoaded
                      ? themeState.themeMode
                      : ThemeMode.system;

                  return MaterialApp(
                    locale: locale,
                    localizationsDelegates: const [
                      S.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: S.delegate.supportedLocales,
                    onGenerateRoute: onGenerateRoute,
                    initialRoute: RoutesNames.splash,
                    themeMode: themeMode,
                    theme: AppTheme.lightTheme,
                    darkTheme: AppTheme.darkTheme,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
