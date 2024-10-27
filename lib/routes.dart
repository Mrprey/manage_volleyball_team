import 'package:manage_volleyball_team/models/team.dart';
import 'package:manage_volleyball_team/screens/edit_players_screen.dart';
import 'package:manage_volleyball_team/screens/home_screen.dart';
import 'package:manage_volleyball_team/screens/team_screen.dart';

final routes = {
  '/': (context) => HomeScreen(),
  '/teamScreen': (context) => TeamScreen(),
  '/editPlayers': (context) => EditPlayersScreen(Team(name: 'name')),
};
