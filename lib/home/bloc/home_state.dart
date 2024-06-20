
part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial();  
}

class HomeError extends HomeState {
  const HomeError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

class Loading extends HomeState {
  const Loading();
}


class LoadedIntroState extends HomeState{
  const LoadedIntroState(this.animation);

  final double animation;

  @override
  List<Object> get props => [];
}