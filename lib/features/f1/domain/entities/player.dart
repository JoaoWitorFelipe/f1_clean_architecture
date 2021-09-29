import './car.dart';

class Player {
  final String firstName;
  final String lastName;
  final String image;
  final int age;
  final int position;
  final Car car;

  Player({
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.age,
    required this.position,
    required this.car,
  });
}
