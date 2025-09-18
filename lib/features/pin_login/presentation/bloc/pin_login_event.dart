part of 'pin_login_bloc.dart';

abstract class PinLoginEvent extends Equatable {
  const PinLoginEvent();

  @override
  List<Object> get props => [];
}

class PinNumberPressed extends PinLoginEvent {
  final String number;

  const PinNumberPressed(this.number);

  @override
  List<Object> get props => [number];
}

class PinBackspacePressed extends PinLoginEvent {}

class PinLoginSubmitted extends PinLoginEvent {}
