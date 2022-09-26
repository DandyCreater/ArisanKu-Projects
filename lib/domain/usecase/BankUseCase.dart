import 'package:arisanku/data/utils/resource/Failure.dart';
import 'package:arisanku/domain/entities/BankEntity.dart';
import 'package:arisanku/domain/repositories/DomainReposity.dart';
import 'package:dartz/dartz.dart';

class BankUseCase {
  final DomainRepository domainRepository;

  BankUseCase(this.domainRepository);

  Future<Either<Failure, BankEntity>> execute() {
    return domainRepository.Bank();
  }
}
