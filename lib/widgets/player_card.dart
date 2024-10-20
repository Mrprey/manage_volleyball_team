import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/models/player.dart';

class PlayerCard extends StatelessWidget {
  final Player player;

  const PlayerCard({required this.player, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Player ${player.number}'),
        subtitle: Text('Position: ${player.position}'),
        trailing: Icon(
          player.isOnCourt ? Icons.check : Icons.close,
          color: player.isOnCourt ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
