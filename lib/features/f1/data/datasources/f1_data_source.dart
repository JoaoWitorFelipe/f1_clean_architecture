import 'dart:convert';

import 'package:f1_clean_architecture/features/f1/data/models/player_model.dart';
import 'package:f1_clean_architecture/mocks/f1_players_mock.dart';

abstract class F1DataSource {
  Future<List<PlayerModel>> getPlayersFromFile();
}

class F1DataSourceImplementation implements F1DataSource {
  @override
  Future<List<PlayerModel>> getPlayersFromFile() async {
    final String response = await f1PlayersMock;
    return (jsonDecode(response) as List)
        .map((json) => PlayerModel.fromJson(json))
        .toList();
  }
}
