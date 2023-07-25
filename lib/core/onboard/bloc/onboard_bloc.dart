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
import '../repository/onboard_repository.dart';

part "onboard_event.dart";
part 'onboard_state.dart';

class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  OnboardBloc() : super(FetchOnboardInit()) {
    on<FetchOnboardEvent>(fetchData);
  }

  final OnboardRepository _repository = OnboardRepository();

  FutureOr<void> fetchData(
    FetchOnboardEvent event,
    Emitter<OnboardState> emit,
  ) async {
    emit(FetchOnboardInit());
    try {
      var res = await _repository.fetchData();

      if (res["code"] == 200) {
        OnboardModel model = OnboardModel();
        emit(FetchOnboardLoaded(data: model));
      } else {
        emit(FetchOnboardFailed("somthing went to wrong"));
      }
    } catch (e) {
      emit(FetchOnboardFailed(e.toString()));
    }
  }
}
