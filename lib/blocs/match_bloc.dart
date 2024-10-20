import 'package:flutter_bloc/flutter_bloc.dart';

class MatchEvent {}

class StartMatch extends MatchEvent {}

class AddPoint extends MatchEvent {
  final bool isTeamA;
  AddPoint(this.isTeamA);
}

class RotatePlayers extends MatchEvent {}

class MatchState {
  final int teamAScore;
  final int teamBScore;
  final bool isMatchOngoing;

  MatchState(
      {this.teamAScore = 0, this.teamBScore = 0, this.isMatchOngoing = false});

  MatchState copyWith({
    int? teamAScore,
    int? teamBScore,
    bool? isMatchOngoing,
  }) {
    return MatchState(
      teamAScore: teamAScore ?? this.teamAScore,
      teamBScore: teamBScore ?? this.teamBScore,
      isMatchOngoing: isMatchOngoing ?? this.isMatchOngoing,
    );
  }
}

class MatchBloc extends Bloc<MatchEvent, MatchState> {
  MatchBloc() : super(MatchState()) {
    on<StartMatch>((event, emit) {
      emit(state.copyWith(isMatchOngoing: true, teamAScore: 0, teamBScore: 0));
    });

    on<AddPoint>((event, emit) {
      if (event.isTeamA) {
        emit(state.copyWith(teamAScore: state.teamAScore + 1));
      } else {
        emit(state.copyWith(teamBScore: state.teamBScore + 1));
      }
    });

    on<RotatePlayers>((event, emit) {
      // Lógica de rotação de jogadores aqui
    });
  }
}
