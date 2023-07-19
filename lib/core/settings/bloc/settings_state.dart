/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July, 18 2023 11:32 PM
/// 
///  * --------------------------------------------------------------------------- * ///

part of "settings_bloc.dart";

abstract class SettingsState extends Equatable {}

class FetchSettingsInit extends SettingsState {
  @override
  List<Object?> get props => [];
}

class FetchSettingsLoaded extends SettingsState {
  final SettingsModel data;

  FetchSettingsLoaded({required this.data});
  
  @override
  List<Object?> get props => [data];
}

class FetchSettingsFailed extends SettingsState {
  final String error;

  FetchSettingsFailed(this.error);
  @override
  List<Object?> get props => [error];
}
