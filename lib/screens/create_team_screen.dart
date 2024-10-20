import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/models/player.dart';
import 'package:manage_volleyball_team/models/positions/position.dart';
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

    if (name.isNotEmpty && _positionSelected != null) {
      setState(() {
        _players.add(
            Player(name: name, position: _positionSelected!, number: number));
      });
      _nameController.clear();
      _numberController.clear();
      _positionSelected = null;
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
      appBar: AppBar(title: Text('Criar Time')),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Nome do Jogador'),
          ),
          TextField(
            controller: _numberController,
            decoration: InputDecoration(labelText: 'Posição do Jogador'),
          ),
          PositionSelector(callBack: _setPosition, position: _positionSelected),
          ElevatedButton(
              onPressed: _addPlayer, child: Text('Adicionar Jogador')),
          Expanded(
            child: ListView.builder(
              itemCount: _players.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_players[index].name),
                  subtitle: Text(_players[index].position.name),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
