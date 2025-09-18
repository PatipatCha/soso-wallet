import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/pin_login/application/pin_login_notifier.dart';

class PinKeypad extends ConsumerWidget {
  const PinKeypad({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        _buildKeypadRow(ref, ['1', '2', '3']),
        _buildKeypadRow(ref, ['4', '5', '6']),
        _buildKeypadRow(ref, ['7', '8', '9']),
        _buildKeypadRow(ref, ['_del', '0', '_submit']),
      ],
    );
  }

  Widget _buildKeypadRow(WidgetRef ref, List<String> keys) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: keys.map((key) => _buildKeypadButton(ref, key)).toList(),
    );
  }

  Widget _buildKeypadButton(WidgetRef ref, String key) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (key == '_del') {
            ref.read(pinLoginNotifierProvider.notifier).onPinBackspacePressed();
          } else if (key == '_submit') {
            ref.read(pinLoginNotifierProvider.notifier).onPinLoginSubmitted();
          } else {
            ref.read(pinLoginNotifierProvider.notifier).onPinNumberPressed(key);
          }
        },
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(35),
          ),
          child: Center(
            child: (key == '_del')
                ? const Icon(Icons.backspace)
                : (key == '_submit')
                    ? const Icon(Icons.check)
                    : Text(
                        key,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
          ),
        ),
      ),
    );
  }
}
