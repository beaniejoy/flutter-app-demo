import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_flutter_project/part2/app/game/rsp_type.dart';
import 'package:test_flutter_project/part2/app/game/widget/cpu_input.dart';
import 'package:test_flutter_project/part2/app/game/widget/game_result.dart';
import 'package:test_flutter_project/part2/app/game/widget/user_input.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  RSPType? _userInput;
  late RSPType _cpuInput;

  @override
  void initState() {
    super.initState();
    isDone = false;
    setCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CpuInput(
            isDone: isDone,
            cpuInput: _cpuInput,
          ),
        ),
        Expanded(
          child: GameResult(
            isDone: isDone,
            result: getResult(),
            callback: reset,
          ),
        ),
        Expanded(
          child: UserInput(
            isDone: isDone,
            userInput: _userInput,
            callback: setUserInput,
          ),
        ),
      ],
    );
  }

  void setUserInput(RSPType userInput) {
    setState(() {
      isDone = true;
      _userInput = userInput;
    });
  }

  void setCpuInput() {
    final random = Random();
    _cpuInput = RSPType.values[random.nextInt(3)];
  }

  GameResultType? getResult() {
    if (_userInput == null) return null;

    var compareResult = _userInput!.compare(_cpuInput);

    if (compareResult > 0) {
      return GameResultType.playerWin;
    }

    if (compareResult == 0) {
      return GameResultType.draw;
    }

    return GameResultType.cpuWin;
  }

  void reset() {
    setState(() {
      isDone = false;
      setCpuInput();
    });
  }
}
