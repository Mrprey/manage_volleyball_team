import 'package:manage_volleyball_team/models/positions/position.dart';

class Player {
  final String name;
  final int number;
  final Position position;
  bool isOnCourt;

  Player({
    required this.name,
    required this.number,
    required this.position,
    this.isOnCourt = false,
  });
}
