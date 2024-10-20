import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/models/player.dart';
import 'package:manage_volleyball_team/utils/app_colors.dart';
import 'package:manage_volleyball_team/utils/text_style.dart';

class PlayerCard extends StatelessWidget {
  final Player player;

  const PlayerCard({required this.player, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardBackground,
      child: ListTile(
        title: title(),
        subtitle: subtitle(),
        leading: iconNumber(player.number),
        trailing: Icon(
          player.isOnCourt ? Icons.check : Icons.close,
          color: player.isOnCourt ? AppColors.success : AppColors.error,
        ),
      ),
    );
  }

  Widget title() {
    return Text(player.name, style: AppTextStyle.titlePlayerCard);
  }

  Widget subtitle() {
    return Text('Posição: ${player.position.name}',
        style: AppTextStyle.subTitlePlayerCard);
  }

  Widget iconNumber(int number) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: AppColors.accent,
      ),
      child: Center(
          child: Text(
        '$number',
        style: AppTextStyle.titlePlayerCard,
      )),
    );
  }
}
