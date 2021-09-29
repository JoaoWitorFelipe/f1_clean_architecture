import 'package:flutter_modular/flutter_modular.dart';

import 'package:f1_clean_architecture/features/f1/data/datasources/f1_data_source.dart';
import 'package:f1_clean_architecture/features/f1/data/repositories/f1_repository_implementation.dart';
import 'package:f1_clean_architecture/features/f1/domain/repositories/f1_repository.dart';
import 'package:f1_clean_architecture/features/f1/domain/usecases/get_player_from_file.dart';
import 'package:f1_clean_architecture/features/f1/presenter/f1_controller.dart';
import 'package:f1_clean_architecture/features/f1/presenter/f1_page.dart';

class F1Module extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((i) => F1DataSourceImplementation()),
        Bind((i) => F1RepositoryImplementation(i<F1DataSource>())),
        Bind((i) => GetPlayerFromFile(i<F1Repository>())),
        Bind((i) => F1Controller(getPlayerFromFile: i<GetPlayerFromFile>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const F1Page()),
      ];
}
