import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pin_login_notifier.g.dart';

@riverpod
class PinLoginNotifier extends _$PinLoginNotifier {
  @override
  PinLoginState build() {
    return const PinLoginState(pin: '', errorMessage: null, isAuthenticated: false);
  }

  void onPinNumberPressed(String number) {
    if (state.pin.length < 6) {
      final newPin = state.pin + number;
      state = PinLoginState(pin: newPin, errorMessage: null, isAuthenticated: false);
      if (newPin.length == 6) {
        // Automatically submit the PIN if it reaches 6 digits
        onPinLoginSubmitted();
      }
    }
  }

  void onPinBackspacePressed() {
    if (state.pin.isNotEmpty) {
      state = PinLoginState(pin: state.pin.substring(0, state.pin.length - 1), errorMessage: null, isAuthenticated: false);
    }
  }

  void onPinLoginSubmitted() {
    if (state.pin == '123456') {
      state = PinLoginState(pin: state.pin, errorMessage: null, isAuthenticated: true);
    } else {
      state = const PinLoginState(pin: '', errorMessage: 'Invalid PIN', isAuthenticated: false);
    }
  }
}

class PinLoginState {
  final String pin;
  final String? errorMessage;
  final bool isAuthenticated;

  const PinLoginState({
    required this.pin,
    this.errorMessage,
    required this.isAuthenticated,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PinLoginState &&
          runtimeType == other.runtimeType &&
          pin == other.pin &&
          errorMessage == other.errorMessage &&
          isAuthenticated == other.isAuthenticated);

  @override
  int get hashCode => pin.hashCode ^ errorMessage.hashCode ^ isAuthenticated.hashCode;

  @override
  String toString() {
    return 'PinLoginState{pin: $pin, errorMessage: $errorMessage, isAuthenticated: $isAuthenticated}';
  }
}
