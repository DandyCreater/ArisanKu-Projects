import 'package:arisanku/domain/entities/BankEntity.dart';
import 'package:arisanku/domain/usecase/BankUseCase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bank_event.dart';
part 'bank_state.dart';

class BankBloc extends Bloc<BankEvent, BankState> {
  final BankUseCase bankUseCase;

  BankBloc(this.bankUseCase) : super(BankInitial()) {
    on<FetchBank>((event, emit) async {
      emit(BankLoading());

      try {
        final res = await bankUseCase.execute();

        res.fold((l) => emit(BankFail(l.message)), (r) => emit(BankSuccess(r)));
      } catch (e) {
        print(e.toString());
        emit(BankFail(e.toString()));
      }
    });
  }
}
