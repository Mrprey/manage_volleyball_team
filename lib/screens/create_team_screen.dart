import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/models/player.dart';
import 'package:manage_volleyball_team/models/positions/position.dart';
import 'package:manage_volleyball_team/utils/app_colors.dart';
import 'package:manage_volleyball_team/utils/text_style.dart';
import 'package:manage_volleyball_team/widgets/player_card.dart';
import 'package:manage_volleyball_team/widgets/selector_position.dart';

class CreateTeamScreen extends StatefulWidget {
  const CreateTeamScreen({super.key});

  @override
  _CreateTeamScreenState createState() => _CreateTeamScreenState();
}

class _CreateTeamScreenState extends State<CreateTeamScreen> {
  final List<Player> _players = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  Position? _positionSelected;

  void _addPlayer() {
    final String name = _nameController.text;
    final int number = int.tryParse(_numberController.text) ?? 0;

    if (name.isNotEmpty && _positionSelected != null && number > 0) {
      setState(() {
        _players.add(
            Player(name: name, position: _positionSelected!, number: number));
      });
      _nameController.clear();
      _numberController.clear();
      _positionSelected = null; // Reseta a posição após adicionar o jogador
      // Atualiza o seletor de posição
      _setPosition(null);
    }
  }

  void _setPosition(Position? newPosition) {
    setState(() {
      _positionSelected = newPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar jogadores')),
      body: Row(
        children: [
          editPlayer(),
          showPlayers(),
        ],
      ),
    );
  }

  Widget editPlayer() {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          inputName(),
          inputNumber(),
          positionSelector(),
          addPlayerButton(),
        ],
      ),
    );
  }

  ElevatedButton addPlayerButton() {
    return ElevatedButton(
      onPressed: _addPlayer,
      child: Text('Adicionar Jogador'),
    );
  }

  Expanded showPlayers() {
    return Expanded(
      child: Container(
        color: AppColors.background,
        child: ListView.builder(
          itemCount: _players.length,
          itemBuilder: (context, index) {
            return PlayerCard(player: _players[index]);
          },
        ),
      ),
    );
  }

  PositionSelector positionSelector() =>
      PositionSelector(callBack: _setPosition, position: _positionSelected);

  TextField inputNumber() {
    return TextField(
      controller: _numberController,
      style: AppTextStyle.titlePlayerCard,
      decoration: InputDecoration(
        labelText: 'Número do Jogador',
        labelStyle: AppTextStyle.titlePlayerCard,
      ),
      keyboardType: TextInputType.number,
    );
  }

  TextField inputName() {
    return TextField(
      controller: _nameController,
      style: AppTextStyle.titlePlayerCard,
      decoration: InputDecoration(
        labelText: 'Nome do Jogador',
        labelStyle: AppTextStyle.titlePlayerCard,
      ),
    );
  }
}
