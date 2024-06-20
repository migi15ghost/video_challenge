part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class IntroEvent extends HomeEvent {
  const IntroEvent(this.animation);

  final double animation;

  @override
  List<Object> get props => [];
}