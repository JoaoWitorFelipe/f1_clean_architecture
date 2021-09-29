import 'package:dartz/dartz.dart';
import 'package:f1_clean_architecture/core/errors/failures.dart';
import 'package:f1_clean_architecture/features/f1/data/datasources/f1_data_source.dart';
import 'package:f1_clean_architecture/features/f1/data/models/player_model.dart';
import 'package:f1_clean_architecture/features/f1/domain/repositories/f1_repository.dart';

class F1RepositoryImplementation implements F1Repository {
  final F1DataSource datasource;

  F1RepositoryImplementation(this.datasource);

  @override
  Future<Either<Failure, List<PlayerModel>>> getPlayersFromFile() async {
    try {
      return Right((await datasource.getPlayersFromFile()));
    } on Exception {
      return Left(ServerFailure());
    }
  }
}
