part of 'bank_bloc.dart';

abstract class BankState extends Equatable {
  const BankState();

  @override
  List<Object> get props => [];
}

class BankInitial extends BankState {}

class BankLoading extends BankState {}

class BankSuccess extends BankState {
  final BankEntity? bankEntity;

  const BankSuccess(this.bankEntity);

  @override
  // TODO: implement props
  List<Object> get props => [bankEntity!];
}

class BankFail extends BankState {
  final String? message;

  const BankFail(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
