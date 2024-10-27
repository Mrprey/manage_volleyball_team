import 'package:manage_volleyball_team/models/player.dart';

class Team {
  final String name;
  List<Player> players;

  Team({required this.name, this.players = const []});

  void addPlayer(Player player) {
    players.add(player);
  }

  void removePlayer(Player player) {
    players.remove(player);
  }
}
