import 'package:flutter/material.dart';
import 'package:test_flutter_project/part2/app/game/rsp_type.dart';
import 'package:test_flutter_project/part2/app/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final RSPType cpuInput;

  const CpuInput({required this.isDone, required this.cpuInput, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SizedBox.shrink()),
        InputCard(child: getCpuInput()),
        const Expanded(child: SizedBox.shrink()),
      ],
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }

    return const SizedBox(
      // width: 64,
      height: 80,
      child: Center(
        child: Text(
          '?',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
