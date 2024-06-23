import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial()) {
    on<PlayVideoEvent>(_loadIntroHandler);
    on<PhoneVideoEvent>(_loadPhoneHandler);
  }

  Future<void> _loadIntroHandler(
      PlayVideoEvent event, Emitter<HomeState> emit) async {
    emit(const LoadedVideoState(0));
    await Future.delayed(const Duration(seconds: 2));
    emit(const Next());
    emit(const LoadedVideoState(1));
    //await Future.delayed(const Duration(seconds: 2));
    //emit(const LoadedPhoneVideoState(0));
  }

  Future<void> _loadPhoneHandler(
      PhoneVideoEvent event, Emitter<HomeState> emit) async {
    emit(const LoadedPhoneVideoState(0));
  }

}
