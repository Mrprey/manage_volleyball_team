import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/models/player.dart';
import 'package:manage_volleyball_team/models/team.dart';

class TeamProvider with ChangeNotifier {
  final List<Team> _teams = [];

  List<Team> get teams => List.unmodifiable(_teams);

  void addTeam(Team team) {
    teams.add(team);
    notifyListeners();
  }

  void removeTeam(Team team) {
    teams.remove(team);
    notifyListeners();
  }

  void addPlayer(Team team, Player player) {
    team.addPlayer(player);
    notifyListeners();
  }

  void removePlayer(Team team, Player player) {
    team.removePlayer(player);
    notifyListeners();
  }
}
