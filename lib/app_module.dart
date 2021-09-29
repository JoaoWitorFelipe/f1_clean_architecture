import 'package:f1_clean_architecture/features/f1/presenter/f1_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/f1', module: F1Module()),
      ];
}
