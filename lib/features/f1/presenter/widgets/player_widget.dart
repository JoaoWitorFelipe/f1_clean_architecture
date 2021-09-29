import 'dart:ui';

import 'package:f1_clean_architecture/features/f1/domain/entities/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PlayerWidget extends StatelessWidget {
  final Player player;

  const PlayerWidget({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                      player.car.image,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "${player.position}°",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      Text(
                        "${player.firstName} ${player.lastName}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Image.network(
                  player.car.brand,
                  height: 60.0,
                ),
              ),
              Center(
                child: Image.network(player.image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
