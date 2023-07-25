/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : Payeewise
/// devloper name : Karthikeyan Maruthachalam
/// created date  : July 25, 2023 12.00 AM
/// 
///  * --------------------------------------------------------------------------- * ///

part of "login_bloc.dart";

abstract class LoginState extends Equatable {}

class FetchLoginInit extends LoginState {
  @override
  List<Object?> get props => [];
}

class FetchLoginLoaded extends LoginState {
  final LoginModel data;

  FetchLoginLoaded({required this.data});
  
  @override
  List<Object?> get props => [data];
}

class FetchLoginFailed extends LoginState {
  final String error;

  FetchLoginFailed(this.error);
  @override
  List<Object?> get props => [error];
}
