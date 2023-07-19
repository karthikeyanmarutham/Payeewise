/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18, 2023
/// 
///  * --------------------------------------------------------------------------- * ///

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../model/onboard_model.dart';

part "onboard_event.dart";
part 'onboard_state.dart';

class OnboardBloc
    extends Bloc<OnboardEvent, OnboardState> {
  OnboardBloc() : super(FetchOnboardInit()) {
    on<FetchOnboardEvent>(fetchData);
  }
  
  FutureOr<void> fetchData(
    FetchOnboardEvent event,
    Emitter<OnboardState> emit,
  ) async {
    emit(FetchOnboardInit());
    try{
      OnboardModel model = OnboardModel();

      emit(FetchOnboardLoaded(data: model));
    }catch(e){
      emit(FetchOnboardFailed(e.toString()));
    }
  }
}
