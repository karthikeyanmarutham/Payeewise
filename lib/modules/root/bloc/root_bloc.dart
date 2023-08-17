/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : Aug 17, 2023 5:30 PM
/// 
///  * --------------------------------------------------------------------------- * ///

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../model/root_model.dart';

part "root_event.dart";
part 'root_state.dart';

class RootBloc
    extends Bloc<RootEvent, RootState> {
  RootBloc() : super(FetchRootInit()) {
    on<FetchRootEvent>(fetchData);
  }
  
  FutureOr<void> fetchData(
    FetchRootEvent event,
    Emitter<RootState> emit,
  ) async {
    emit(FetchRootInit());
    try{
      RootModel model = RootModel();

      emit(FetchRootLoaded(data: model));
    }catch(e){
      emit(FetchRootFailed(e.toString()));
    }
  }
}
