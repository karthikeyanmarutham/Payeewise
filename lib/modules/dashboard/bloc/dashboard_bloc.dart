/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18,2023 11:27 PM
/// 
///  * --------------------------------------------------------------------------- * ///

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../model/dashboard_model.dart';

part "dashboard_event.dart";
part 'dashboard_state.dart';

class DashboardBloc
    extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(FetchDashboardInit()) {
    on<FetchDashboardEvent>(fetchData);
  }
  
  FutureOr<void> fetchData(
    FetchDashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(FetchDashboardInit());
    try{
      DashboardModel model = DashboardModel();

      emit(FetchDashboardLoaded(data: model));
    }catch(e){
      emit(FetchDashboardFailed(e.toString()));
    }
  }
}
