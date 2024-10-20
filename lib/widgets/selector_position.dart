import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/models/positions/libero.dart';
import 'package:manage_volleyball_team/models/positions/middle_blocker.dart';
import 'package:manage_volleyball_team/models/positions/opposite.dart';
import 'package:manage_volleyball_team/models/positions/outside_hitter.dart';
import 'package:manage_volleyball_team/models/positions/position.dart';
import 'package:manage_volleyball_team/models/positions/setter.dart';

class PositionSelector extends StatefulWidget {
  const PositionSelector(
      {required this.callBack, required this.position, super.key});

  final Function(Position? newPosition) callBack;
  final Position? position;

  @override
  _PositionSelectorState createState() => _PositionSelectorState();
}

class _PositionSelectorState extends State<PositionSelector> {
  List<Position> positions = [
    Setter(),
    Opposite(),
    MiddleBlocker(),
    OutsideHitter(),
    Libero(),
  ];

  Position? get selectedPosition => widget.position;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Position>(
      hint: Text('Selecione uma posição'),
      value: selectedPosition,
      onChanged: widget.callBack,
      items: positions.map<DropdownMenuItem<Position>>((Position position) {
        return DropdownMenuItem<Position>(
          value: position,
          child: Text(position.name),
        );
      }).toList(),
    );
  }
}
