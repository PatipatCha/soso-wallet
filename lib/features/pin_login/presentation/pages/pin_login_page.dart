import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/home/presentation/pages/home_page.dart';
import 'package:myapp/features/pin_login/application/pin_login_notifier.dart';
import 'package:myapp/features/pin_login/presentation/widgets/pin_keypad.dart';
import 'package:myapp/features/pin_login/presentation/widgets/pin_display.dart';


class PinLoginPage extends ConsumerWidget {
  const PinLoginPage({super.key});

 @override
  Widget build(BuildContext context, WidgetRef ref) {

    ref.listen<PinLoginState>(pinLoginNotifierProvider, (previous, next) {
      if (next.isAuthenticated) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      } else if (next.errorMessage != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.errorMessage!)),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter PIN'),
      ),
      body: const Column(
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
    );
  }
}
