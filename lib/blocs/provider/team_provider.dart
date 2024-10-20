import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/models/player.dart';

class TeamProvider with ChangeNotifier {
  final List<Player> _players = [];

  List<Player> get players => List.unmodifiable(_players);

  void addPlayer(Player player) {
    _players.add(player);
    notifyListeners();
  }

  void removePlayer(Player player) {
    _players.remove(player);
    notifyListeners();
  }
}
