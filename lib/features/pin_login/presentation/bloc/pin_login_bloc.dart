import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pin_login_event.dart';
part 'pin_login_state.dart';

class PinLoginBloc extends Bloc<PinLoginEvent, PinLoginState> {
  PinLoginBloc() : super(const PinLoginInitial()) {
    on<PinNumberPressed>(_onPinNumberPressed);
    on<PinBackspacePressed>(_onPinBackspacePressed);
    on<PinLoginSubmitted>(_onPinLoginSubmitted);
  }

  void _onPinNumberPressed(
      PinNumberPressed event, Emitter<PinLoginState> emit) {
    if (state.pin.length < 6) {
      emit(PinLoginInProgress(state.pin + event.number));
    }
  }

  void _onPinBackspacePressed(
      PinBackspacePressed event, Emitter<PinLoginState> emit) {
    if (state.pin.isNotEmpty) {
      emit(PinLoginInProgress(state.pin.substring(0, state.pin.length - 1)));
    }
  }

  void _onPinLoginSubmitted(
      PinLoginSubmitted event, Emitter<PinLoginState> emit) {
    if (state.pin == '123456') {
      emit(PinLoginSuccess(state.pin));
    } else {
      emit(const PinLoginFailure('', 'Invalid PIN'));
    }
  }
}
