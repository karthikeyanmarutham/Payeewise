/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : Aug 17, 2023 5:30 PM
/// 
///  * --------------------------------------------------------------------------- * ///

part of "root_bloc.dart";

abstract class RootEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchRootEvent extends RootEvent {
  FetchRootEvent();
}
