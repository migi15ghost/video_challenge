import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial()) {
    on<IntroEvent>(_loadIntroHandler);
  }

  Future<void> _loadIntroHandler(
      IntroEvent event, Emitter<HomeState> emit) async {
    emit(const Loading());    
    emit(LoadedIntroState(event.animation));
  }
}
