import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/pin_login/application/pin_login_notifier.dart';

class PinDisplay extends ConsumerWidget {
  const PinDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pinState = ref.watch(pinLoginNotifierProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        bool hasPin = index < pinState.pin.length;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: hasPin ? Colors.blue : Colors.grey,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
