part of 'bank_bloc.dart';

abstract class BankEvent extends Equatable {
  const BankEvent();

  @override
  List<Object> get props => [];
}

class FetchBank extends BankEvent {
  @override
  // TODO: implement props
  List<Object> get props => super.props;
}
