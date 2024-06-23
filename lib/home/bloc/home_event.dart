part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class PlayVideoEvent extends HomeEvent {
  const PlayVideoEvent();

  @override
  List<Object> get props => [];
}

class PhoneVideoEvent extends HomeEvent {
  const PhoneVideoEvent();

  @override
  List<Object> get props => [];
}