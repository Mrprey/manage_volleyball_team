import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/screens/create_team_screen.dart';
import 'package:manage_volleyball_team/utils/app_localizations.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.t(context, 'team.team')),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateTeamScreen()),
            );
          },
          child: Text(I18n.t(context, 'edit_team')),
        ),
      ),
    );
  }
}
