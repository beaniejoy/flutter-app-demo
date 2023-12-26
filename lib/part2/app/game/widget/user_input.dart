import 'package:flutter/material.dart';
import 'package:test_flutter_project/part2/app/game/rsp_type.dart';

import 'input_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final RSPType? userInput;
  final Function(RSPType) callback;

  const UserInput({
    required this.isDone,
    this.userInput,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          const Expanded(child: SizedBox.shrink()),
          InputCard(child: Image.asset(userInput!.path)),
          const Expanded(child: SizedBox.shrink()),
        ],
      );
    }

    return Row(
      children: _getInputs(callback),
    );
  }

  List<Widget> _getInputs(Function(RSPType) callback) {
    return RSPType.values
        .map(
          (type) => InputCard(
            child: Image.asset(type.path),
            callback: () => callback.call(type),
          ),
        )
        .toList();
  }
}
