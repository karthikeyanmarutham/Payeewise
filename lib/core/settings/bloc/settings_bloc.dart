/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July, 18 2023 11:32 PM
/// 
///  * --------------------------------------------------------------------------- * ///

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../model/settings_model.dart';

part "settings_event.dart";
part 'settings_state.dart';

class SettingsBloc
    extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(FetchSettingsInit()) {
    on<FetchSettingsEvent>(fetchData);
  }
  
  FutureOr<void> fetchData(
    FetchSettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(FetchSettingsInit());
    try{
      SettingsModel model = SettingsModel();

      emit(FetchSettingsLoaded(data: model));
    }catch(e){
      emit(FetchSettingsFailed(e.toString()));
    }
  }
}
