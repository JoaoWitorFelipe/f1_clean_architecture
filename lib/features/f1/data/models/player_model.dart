import 'package:f1_clean_architecture/features/f1/data/models/car_model.dart';
import 'package:f1_clean_architecture/features/f1/domain/entities/car.dart';
import 'package:f1_clean_architecture/features/f1/domain/entities/player.dart';

class PlayerModel extends Player {
  PlayerModel({
    required String firstName,
    required String lastName,
    required String image,
    required int age,
    required int position,
    required Car car,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          image: image,
          age: age,
          position: position,
          car: car,
        );

  factory PlayerModel.fromJson(Map<String, dynamic> json) {
    return PlayerModel(
      firstName: json['first_name'],
      lastName: json['last_name'],
      image: json['image'],
      age: json['age'],
      position: json['position'],
      car: CarModel.fromJson(json['car']),
    );
  }
}
