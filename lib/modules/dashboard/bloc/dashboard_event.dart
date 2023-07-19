/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18,2023 11:27 PM
/// 
///  * --------------------------------------------------------------------------- * ///

part of "dashboard_bloc.dart";

abstract class DashboardEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchDashboardEvent extends DashboardEvent {
  FetchDashboardEvent();
}
