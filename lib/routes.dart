import 'package:manage_volleyball_team/screens/create_team_screen.dart';
import 'package:manage_volleyball_team/screens/home_screen.dart';
import 'package:manage_volleyball_team/screens/team_screen.dart';

final routes = {
  '/': (context) => HomeScreen(),
  '/teamScreen': (context) => TeamScreen(),
  '/createTeam': (context) => CreateTeamScreen(),
};
