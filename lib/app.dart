import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_fruits_hub/core/di/dependency_injection.dart';
import 'package:my_fruits_hub/core/navigation/on_generate_route.dart';
import 'package:my_fruits_hub/core/navigation/routes_names.dart';
import 'package:my_fruits_hub/core/services/localization/localization_cubit.dart';
import 'package:my_fruits_hub/core/services/shared_preferences/shared_preferences_service.dart';
import 'package:my_fruits_hub/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LocalizationCubit>(),
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          final locale =
              state is LocalizationLoaded ? state.locale : const Locale('ar');

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
          );
        },
      ),
    );
  }
}
