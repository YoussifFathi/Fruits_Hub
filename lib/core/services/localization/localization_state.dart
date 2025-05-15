part of 'localization_cubit.dart';

@immutable
abstract class LocalizationState {}

class LocalizationInitial extends LocalizationState {}

class LocalizationLoaded extends LocalizationState {
  final Locale locale;

  LocalizationLoaded({required this.locale});
}
