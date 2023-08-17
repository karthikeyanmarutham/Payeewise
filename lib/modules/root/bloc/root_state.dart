/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : Aug 17, 2023 5:30 PM
/// 
///  * --------------------------------------------------------------------------- * ///

part of "root_bloc.dart";

abstract class RootState extends Equatable {}

class FetchRootInit extends RootState {
  @override
  List<Object?> get props => [];
}

class FetchRootLoaded extends RootState {
  final RootModel data;

  FetchRootLoaded({required this.data});
  
  @override
  List<Object?> get props => [data];
}

class FetchRootFailed extends RootState {
  final String error;

  FetchRootFailed(this.error);
  @override
  List<Object?> get props => [error];
}
