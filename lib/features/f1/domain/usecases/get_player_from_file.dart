import 'package:dartz/dartz.dart';
import 'package:f1_clean_architecture/core/errors/failures.dart';
import 'package:f1_clean_architecture/features/f1/domain/entities/player.dart';
import 'package:f1_clean_architecture/features/f1/domain/repositories/f1_repository.dart';

class GetPlayerFromFile {
  final F1Repository repository;

  GetPlayerFromFile(this.repository);

  Future<Either<Failure, List<Player>>> call() async {
    return repository.getPlayersFromFile();
  }
}
