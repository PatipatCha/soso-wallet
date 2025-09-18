import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/pin_login/presentation/bloc/pin_login_bloc.dart';
import 'package:myapp/features/pin_login/presentation/widgets/pin_keypad.dart';
import 'package:myapp/features/pin_login/presentation/widgets/pin_display.dart';

class PinLoginPage extends StatelessWidget {
  const PinLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PinLoginBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Enter PIN'),
        ),
        body: BlocListener<PinLoginBloc, PinLoginState>(
          listener: (context, state) {
            if (state is PinLoginSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Login Successful')),
              );
            } else if (state is PinLoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            }
          },
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your 6-digit PIN',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              PinDisplay(),
              SizedBox(height: 40),
              PinKeypad(),
            ],
          ),
        ),
      ),
    );
  }
}
