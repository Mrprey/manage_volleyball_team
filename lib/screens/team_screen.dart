import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/screens/edit_players_screen.dart';
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
              MaterialPageRoute(builder: (context) => EditPlayersScreen()),
            );
          },
          child: Text(I18n.t(context, 'edit_team')),
        ),
      ),
    );
  }
}
