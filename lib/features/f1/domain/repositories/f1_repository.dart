import 'package:dartz/dartz.dart';
import 'package:f1_clean_architecture/core/errors/failures.dart';
import 'package:f1_clean_architecture/features/f1/domain/entities/player.dart';

abstract class F1Repository {
  Future<Either<Failure, List<Player>>> getPlayersFromFile();
}
