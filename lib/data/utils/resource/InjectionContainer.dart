import 'package:arisanku/data/datasource/RemoteLocalSource.dart';
import 'package:arisanku/data/repositories/DataRepositoryImpl.dart';
import 'package:arisanku/domain/repositories/DomainReposity.dart';
import 'package:arisanku/domain/usecase/BankUseCase.dart';
import 'package:arisanku/presentation/bloc/BankBloc/bank_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init(String baseUrl) async {
  //BANK MODULE
  sl.registerFactory(() => BankBloc(sl()));
  sl.registerLazySingleton(() => BankUseCase(sl()));

  //OTHER MODULE
  // ---

  sl.registerLazySingleton<DomainRepository>(() => DataRepositoryImpl(sl()));
  sl.registerLazySingleton<RemoteLocalSource>(() => RemoteLocalSourceImpl());
}
