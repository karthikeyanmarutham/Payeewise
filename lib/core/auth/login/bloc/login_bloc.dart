/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : Payeewise
/// devloper name : Karthikeyan Maruthachalam
/// created date  : July 25, 2023 12.00 AM
/// 
///  * --------------------------------------------------------------------------- * ///

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../model/login_model.dart';

part "login_event.dart";
part 'login_state.dart';

class LoginBloc
    extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(FetchLoginInit()) {
    on<FetchLoginEvent>(fetchData);
  }
  
  FutureOr<void> fetchData(
    FetchLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(FetchLoginInit());
    try{
      LoginModel model = LoginModel();

      emit(FetchLoginLoaded(data: model));
    }catch(e){
      emit(FetchLoginFailed(e.toString()));
    }
  }
}
