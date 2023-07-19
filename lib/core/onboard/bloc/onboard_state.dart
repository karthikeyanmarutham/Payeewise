/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18, 2023
/// 
///  * --------------------------------------------------------------------------- * ///

part of "onboard_bloc.dart";

abstract class OnboardState extends Equatable {}

class FetchOnboardInit extends OnboardState {
  @override
  List<Object?> get props => [];
}

class FetchOnboardLoaded extends OnboardState {
  final OnboardModel data;

  FetchOnboardLoaded({required this.data});
  
  @override
  List<Object?> get props => [data];
}

class FetchOnboardFailed extends OnboardState {
  final String error;

  FetchOnboardFailed(this.error);
  @override
  List<Object?> get props => [error];
}
