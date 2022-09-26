import 'package:arisanku/data/datasource/RemoteLocalSource.dart';
import 'package:arisanku/data/model/BankDataResponseModel.dart';
import 'package:arisanku/data/utils/resource/Failure.dart';
import 'package:arisanku/domain/entities/BankEntity.dart';
import 'package:arisanku/domain/repositories/DomainReposity.dart';
import 'package:dartz/dartz.dart';

class DataRepositoryImpl implements DomainRepository {
  final RemoteLocalSource remote;

  DataRepositoryImpl(this.remote);

  Future<Either<Failure, BankEntity>> Bank() async {
    BankDataResponseModel result = await remote.GetBankData();

    if (result.code == "AY-2001") {
      return right(result.toEntity());
    } else {
      return left(ServerFailure(result.message!));
    }
  }
}
