/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : Payeewise
/// devloper name : Karthikeyan Maruthachalam
/// created date  : July 25, 2023 12.00 AM
/// 
///  * --------------------------------------------------------------------------- * ///

part of "login_bloc.dart";

abstract class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchLoginEvent extends LoginEvent {
  FetchLoginEvent();
}
