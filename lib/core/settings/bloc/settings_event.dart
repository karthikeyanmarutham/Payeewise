/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July, 18 2023 11:32 PM
/// 
///  * --------------------------------------------------------------------------- * ///

part of "settings_bloc.dart";

abstract class SettingsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchSettingsEvent extends SettingsEvent {
  FetchSettingsEvent();
}
