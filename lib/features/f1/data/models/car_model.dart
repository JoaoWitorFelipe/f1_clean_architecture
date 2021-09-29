import 'package:f1_clean_architecture/features/f1/domain/entities/car.dart';

class CarModel extends Car {
  CarModel({required String brand, required String image})
      : super(
          brand: brand,
          image: image,
        );

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(brand: json['brand'], image: json['image']);
  }
}
