/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18,2023 11:27 PM
/// 
///  * --------------------------------------------------------------------------- * ///

part of "dashboard_bloc.dart";

abstract class DashboardState extends Equatable {}

class FetchDashboardInit extends DashboardState {
  @override
  List<Object?> get props => [];
}

class FetchDashboardLoaded extends DashboardState {
  final DashboardModel data;

  FetchDashboardLoaded({required this.data});
  
  @override
  List<Object?> get props => [data];
}

class FetchDashboardFailed extends DashboardState {
  final String error;

  FetchDashboardFailed(this.error);
  @override
  List<Object?> get props => [error];
}
