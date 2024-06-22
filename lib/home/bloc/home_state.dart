
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

class Next extends HomeState {
  const Next();
}

class LoadedVideoState extends HomeState{
  const LoadedVideoState(this.animation);

  final double animation;

  @override
  List<Object> get props => [];
}

class LoadedDescriptionVideoState extends HomeState{
  const LoadedDescriptionVideoState();

  @override
  List<Object> get props => [];
}