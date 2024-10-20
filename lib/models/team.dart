import 'package:manage_volleyball_team/models/player.dart';

class Team {
  final String name;
  List<Player> players;

  Team({
    required this.name,
    required this.players,
  });
}
