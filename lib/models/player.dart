class Player {
  final String name;
  final int number;
  final String position;
  bool isOnCourt;

  Player({
    required this.name,
    required this.number,
    required this.position,
    this.isOnCourt = false,
  });
}
