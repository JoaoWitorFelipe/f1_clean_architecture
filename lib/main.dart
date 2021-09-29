import 'package:f1_clean_architecture/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() => runApp(
      ModularApp(
        module: AppModule(),
        child: const AppWidget(),
      ),
    );

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "F1 Clean Architecture",
      initialRoute: '/f1',
    ).modular();
  }
}
