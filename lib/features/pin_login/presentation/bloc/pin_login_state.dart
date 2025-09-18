part of 'pin_login_bloc.dart';

abstract class PinLoginState extends Equatable {
  final String pin;
  const PinLoginState(this.pin);

  @override
  List<Object> get props => [pin];
}

class PinLoginInitial extends PinLoginState {
  const PinLoginInitial() : super('');
}

class PinLoginInProgress extends PinLoginState {
  const PinLoginInProgress(super.pin);
}

class PinLoginSuccess extends PinLoginState {
  const PinLoginSuccess(super.pin);
}

class PinLoginFailure extends PinLoginState {
  final String error;

  const PinLoginFailure(super.pin, this.error);

  @override
  List<Object> get props => [pin, error];
}
