import 'package:get_it/get_it.dart';
import 'package:my_fruits_hub/core/services/localization/localization_cubit.dart';
import 'package:my_fruits_hub/core/services/shared_preferences/shared_preferences_service.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // Services
  final sharedPrefsService = SharedPreferencesService();

  getIt.registerLazySingleton<SharedPreferencesService>(
    () => sharedPrefsService,
  );

  // Cubits
  getIt.registerFactory<LocalizationCubit>(
    () => LocalizationCubit(),
  );
}
