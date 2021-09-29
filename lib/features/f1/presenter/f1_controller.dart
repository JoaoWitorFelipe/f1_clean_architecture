import 'package:f1_clean_architecture/core/errors/failures.dart';
import 'package:f1_clean_architecture/features/f1/domain/entities/player.dart';
import 'package:f1_clean_architecture/features/f1/domain/usecases/get_player_from_file.dart';
import 'package:mobx/mobx.dart';

part 'f1_controller.g.dart';

class F1Controller = _F1ControllerBase with _$F1Controller;

abstract class _F1ControllerBase with Store {
  final GetPlayerFromFile getPlayerFromFile;

  _F1ControllerBase({required this.getPlayerFromFile}) {
    initValues();
  }

  @observable
  List<Player> players = <Player>[];

  @observable
  Failure? error;

  @action
  Future<void> initValues() async {
    final result = await getPlayerFromFile();
    result.fold((l) => error = l, (r) => players = r);
  }
}
