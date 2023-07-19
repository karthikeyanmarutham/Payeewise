/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18, 2023
/// 
///  * --------------------------------------------------------------------------- * ///

part of "onboard_bloc.dart";

abstract class OnboardEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchOnboardEvent extends OnboardEvent {
  FetchOnboardEvent();
}
