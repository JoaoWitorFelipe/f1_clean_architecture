import 'package:f1_clean_architecture/features/f1/domain/entities/player.dart';
import 'package:f1_clean_architecture/features/f1/presenter/f1_controller.dart';
import 'package:f1_clean_architecture/features/f1/presenter/widgets/header_widget.dart';
import 'package:f1_clean_architecture/features/f1/presenter/widgets/player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class F1Page extends StatefulWidget {
  const F1Page({Key? key}) : super(key: key);

  @override
  _F1PageState createState() => _F1PageState();
}

class _F1PageState extends ModularState<F1Page, F1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HeaderWidget(),
          Observer(builder: (BuildContext _) {
            if (controller.error != null) {
              return Center(child: Text(controller.error.toString()));
            }

            return Expanded(
              child: ListView(
                children: controller.players
                    .map(
                      (Player player) => PlayerWidget(player: player),
                    )
                    .toList(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
