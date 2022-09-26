import 'package:arisanku/data/utils/resource/Failure.dart';
import 'package:arisanku/domain/entities/BankEntity.dart';
import 'package:dartz/dartz.dart';

abstract class DomainRepository {
  Future<Either<Failure, BankEntity>> Bank();
}
