const assetImagePath = 'assets/images';

enum RSPType {
  rock(number: 3),
  scissors(number: 2),
  paper(number: 1);

  const RSPType({required this.number});

  final int number;

  String get path => '$assetImagePath/$name.png';

  int compare(RSPType other) {
    final result = number - other.number;

    switch (result) {
      case 1:
      case -2:
        return 1;

      case 0:
        return 0;

      case -1:
      case 2:
        return -1;

      default:
        throw Exception();
    }
  }
}

enum GameResultType {
  playerWin('Player 승리'),
  draw('무승부'),
  cpuWin('Player 패배');

  const GameResultType(this.displayString);

  final String displayString;
}
